<?php
namespace app\components;

use Yii;

/**
 * Componente para convertir el array de model->errors a una 
 * cadena pqra que e pueda visualizar en un mensaje string
 */
class OneSignalComponent 
{
    const APP_ID = "05406fd8-6a53-43ae-ac38-d416ef79aac9";
    /**
     * Send to Specific Devices
     * 
     * Finally, you may also target specific devices with the create notification method. Targeting devices is typically used in two ways:
     * For notifications that target individual users, such as if they've received a message from someone.
     * For apps that wish to manage their own segments, such as tracking a user's followers and sending notifications to them when that user posts.
     * When targeting specific devices, you may use any of the following parameters together:
     * 
     * @param array $errors array de errors del modelo active records
     * @return UnprocessableEntityHttpException
     */
    static public function sendMessageDevice($playerId, $message, $data){
        $content = [
            "en" => $message
        ];
        
        $fields = [
            'app_id' => self::APP_ID,
            'include_player_ids' => [
                $playerId
            ],
            'data' => $data,
            'contents' => $content
        ];
        
        $fields = json_encode($fields);
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

        $response = curl_exec($ch);
        curl_close($ch);
        
        return $response;
    }
}