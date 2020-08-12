<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\Nosotros;
use app\models\TipoEspacioPublicitario;
use app\models\Zona;
use app\models\EspacioPublicitario;
use app\models\Portafolio;
use app\models\Cliente;
use app\models\Contacto;
use app\models\Servicio;
use app\models\Team;
use app\models\FuiLona;
use app\models\Pedidodelivery;
// use app\models\ContactForm;
// use app\models\AsistenciaSeminario;
// use app\models\Estudiante;
// use app\models\AsignacionCasillero;
// use app\models\Mensualidad;
// use app\models\Year;
// use app\models\Inscripcion;
// use app\models\Baner;
// use app\models\Ambiente;
// use app\models\MenuComida;
// use app\models\Evento;
use yii\data\Pagination;
use app\components\errors\ErrorsComponent;

class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                // 'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => [
                            'index', 
                            'error',
                        ],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
                'except'=>[
                    'ver-pedido'
                ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @param $id id de zona
     * @return string
     */
    public function actionIndex($id = null)
    {
        $user = \Yii::$app->user->identity;
        $rol = $user->rol;
        if ($rol == $user::ROLE_SUPER_USER){
            return $this->render('index'); 
        }
        if ($rol == $user::ROLE_ADMINISTRADOR){
            return $this->render('index'); 
        }
        if ($rol == $user::ROLE_CALL_CENTER){
            return $this->redirect('/pedidodelivery/create'); 
        }
        if ($rol == $user::ROLE_SUCURSAL){
            return $this->redirect('/pedidodelivery/index'); 
        }
        return $this->render('index');
    }


    public function actionError(){
        // $this->layout = 'website';
        return $this->render('error');
    }

    public function actionVerPedido($id){
        $this->layout = '/pedido';
        $model = Pedidodelivery::findOne($id);
        if (!$model) {
            throw new NotFoundHttpException('El pedido no existe');
        }

        return $this->render('ver_pedido', [
            'model' => $model,
        ]);
    }
}
