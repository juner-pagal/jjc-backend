<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function PostContactDetails(Request $request){
        $name = $request->input('name');
        $jobtitle = $request->input('jobtitle');
        $email = $request->input('email');
        $website = $request->input('website');
        $mediaspend = $request->input('mediaspend');
        $message = $request->input('message');
        $subscription = $request->input('subscription');

        date_default_timezone_set('Asia/Manila');
        $contact_date = date("d-m-Y");
        $contact_time = date("h:i:sa");
        
        $result = Contact::insert([
            'name' => $name,
            'jobtitle' => $jobtitle,
            'email' => $email,
            'website' => $website,
            'mediaspend' => $mediaspend,
            'message' => $message,
            'subscription' => $subscription,
            'contact_date' => $contact_date,
            'contact_time' => $contact_time,
        ]);

        return $result;

    }//end of method
}
