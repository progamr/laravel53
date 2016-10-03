<?php

namespace App\Notifications;

use App\Lesson;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class LessonPublished extends Notification
{
    use Queueable;

    public $lesson;

    /**
     * Create a new notification instance.
     * LessonPublished constructor.
     * @param Lesson $lesson
     */

    public function __construct(Lesson $lesson)
    {
        $this->lesson = $lesson;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->subject('A New lesson :' . $this->lesson->title)
                    ->line('a new lesson was published at laravel 5.3 '.$this->lesson->title)
                    ->action('Watch It Now', url('/lessons/').$this->lesson->id);
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
