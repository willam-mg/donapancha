<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\widgets;

use \yii\bootstrap\Alert as BootstrapAlert;
use \yii\bootstrap\Widget;

/**
 * Alert widget renders a message from session flash for material alerts. All flash messages are displayed
 * in the sequence they were assigned using setFlash. You can set message as following:
 *
 * ```php
 * \Yii::$app->getSession()->setFlash('error', '<b>Alert!</b> Danger alert preview. This alert is dismissable.');
 * ```
 *
 * Multiple messages could be set as follows:
 *
 * ```php
 * \Yii::$app->getSession()->setFlash('error', ['Error 1', 'Error 2']);
 * ```
 *
 * @author Julio C. Ramos <ramosisw@gmail.com>
 */
class Alert extends Widget {
    /**
     * @var array the alert types configuration for the flash messages.
     * This array is setup as $key => $value, where:
     * - $key is the name of the session flash variable
     * - $value is the array:
     *       - class of alert type (i.e. danger, success, info, warning)
     *       - icon for alert AdminLTE
     */
    public $alertTypes = [
        'error' => [
            'class' => 'alert-danger',
            // 'icon' => '<i class="material-icons">clear</i>',
            'icon'=>'',
        ],
        'danger' => [
            'class' => 'alert-danger',
            // 'icon' => '<i class="material-icons">clear</i>',
            'icon'=>'',
        ],
        'success' => [
            'class' => 'alert-success',
            // 'icon' => '<i class="material-icons">done</i>',
            'icon'=>'',
        ],
        'info' => [
            'class' => 'alert-info',
            // 'icon' => '<i class="material-icons">error_outline</i>',
            'icon'=>'',
        ],
        'warning' => [
            'class' => 'alert-warning',
            // 'icon' => '<i class="material-icons">warning</i>',
            'icon'=>'',
        ],
    ];

    /**
     * @var array the options for rendering the close button tag.
     */
    public $closeButton = [];

    /**
     * Initializes the widget.
     * This method will register the bootstrap asset bundle. If you override this method,
     * make sure you call the parent implementation first.
     */
    public function init(){
        parent::init();

        $session = \Yii::$app->getSession();
        $flashes = $session->getAllFlashes();
        $appendCss = isset($this->options['class']) ? ' ' . $this->options['class'] : '';

        foreach ($flashes as $type => $data) {
            if (isset($this->alertTypes[$type])) {
                $data = (array) $data;
                foreach ($data as $message) {

                    $this->options['class'] = $this->alertTypes[$type]['class'] . $appendCss;
                    $this->options['id'] = $this->getId() . '-' . $type;

                    echo BootstrapAlert::widget([
                            'body' => $this->alertTypes[$type]['icon'] .' '. $message,
                            'closeButton' => $this->closeButton,
                            'options' => $this->options,
                        ]);
                }

                $session->removeFlash($type);
            }
        }
    }
}
