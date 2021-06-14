<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use App\message;
use App\Events\NewMessage;
class ContactsController extends Controller
{
    public function get()
    {
        // get all users except the authenticated one
        $contacts = User::where('id', '!=', auth()->id())->get();
        // get a collection of items where sender_id is the user who sent us a message
        // and messages_count is the number of unread messages we have from him
        $unreadIds = message::select(\DB::raw('`user_from` as sender_id, count(`user_from`) as messages_count'))
            ->where('user_to', auth()->id())
            ->where('user_read', false)
            ->groupBy('user_from')
            ->get();
        // add an unread key to each contact with the count of unread messages
        $contacts = $contacts->map(function($contact) use ($unreadIds) {
            $contactUnread = $unreadIds->where('sender_id', $contact->id)->first();
            $contact->unread = $contactUnread ? $contactUnread->messages_count : 0;
            return $contact;
        });
        return response()->json($contacts);
    }
    public function getMessagesFor($id)
    {
        // mark all messages with the selected contact as read
        message::where('user_from', $id)->where('user_to', auth()->id())->update(['user_read' => true]);
        // get all messages between the authenticated user and the selected user
        $messages = message::where(function($q) use ($id) {
            $q->where('user_from', auth()->id());
            $q->where('user_to', $id);
        })->orWhere(function($q) use ($id) {
            $q->where('user_from', $id);
            $q->where('user_to', auth()->id());
        })
        ->get();
        return response()->json($messages);
    }
    public function send(Request $request)
    {
        $message = message::create([
            'user_from' => auth()->id(),
            'user_to' => $request->contact_id,
            'text' => $request->text
        ]);
        broadcast(new NewMessage($message));
        return response()->json($message);
    }
}