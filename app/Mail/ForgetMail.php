<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class ForgetMail extends Mailable
{
    use Queueable, SerializesModels;

    public $token;
    /**
     * Create a new message instance.
     */
    public function __construct($token)
    {
        $this->data = $token;
    }

    /**
     * Get the message envelope.
     */
    // public function envelope(): Envelope
    // {
    //     return new Envelope(
    //         // subject: 'Forget Mail',
    //         subject: 'Password Reset Link',
    //     );
    // }

    // /**
    //  * Get the message content definition.
    //  */
    // public function content()
    // {
        
    //     // return new Content(
    //     //     // view: ' view.name'
    //     // );
    //     // $data = $this->data;
    //     // return $this->from('juner.pagal@gmail.com')->view('mail.forget',compact('data'));

    // }

    // /**
    //  * Get the attachments for the message.
    //  *
    //  * @return array<int, \Illuminate\Mail\Mailables\Attachment>
    //  */
    // public function attachments(): array
    // {
    //     return [];
    // }

    public function Content()
    {
        $data = $this->data;
        return $this->from('juner.pagal@gmail.com')->view('mail.forget',compact('data'))->subject('Password Reset Link');
    }
}
