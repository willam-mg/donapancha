<?php

namespace app\controllers;

use Yii;
use app\models\Pedidodelivery;
use app\models\PedidodeliverySearch;
use app\models\Producto;
use app\models\PedidoDeliveryDetalle;
use app\models\Cliente;
use app\models\Preciodelivery;
use app\models\PrecioCoordinates;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\components\errors\ErrorsComponent;
use Carbon\Carbon;
use yii\helpers\ArrayHelper;


/**
 * PedidodeliveryController implements the CRUD actions for Pedidodelivery model.
 */
class PedidodeliveryController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Pedidodelivery models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PedidodeliverySearch();
        $params = Yii::$app->request->queryParams;
        $dataProvider = $searchModel->search($params);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Pedidodelivery model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Pedidodelivery model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($cl = null, $ur = null, $tl = null, $zn = null, $di = null, $ins = null, $tip= null, $hor = null, $suc = null)
    {
        $request = Yii::$app->request;
        $model = new Pedidodelivery();
        $model->origen = Pedidodelivery::ORIGEN_CALLCENTER;
        $model->tipo_pedido_id = 1;
        $minutos = 45;
        $cliente = Cliente::findOne($cl);
        if ($cliente){
            $model->cliente_id = $cl;
            $model->telefono = $cliente->telefono;
            $model->zona = $cliente->zona;
            $model->direccion = $cliente->direccion;
        }
        $productos = Producto::find()->all();
        $model->fecha_entrega = Carbon::now()->format('Y-m-d');
        $model->hora_entrega = Carbon::now()->format('H:i');
        $clientes = Cliente::find()->all();

        $reqProductos = [];
        $reqCantidades = [];

        if ( $ur != null ){
            $model->url_mapa = str_replace('"', '', $ur);
            if ($model->url_mapa){
                $url_parts = parse_url($model->url_mapa);
                $result1 = explode( 'data=', $url_parts['path']);
                $result2 = explode( '!3d', strval($result1[1]) );
                $latLng = explode( '!4d', strval($result2[1]) );
                
                $long = $latLng[1];
                $lat = $latLng[0];
    
                $model->latitude = $lat;
                $model->longitude = $long;
                $model->zoom = '18';
            }
        }
        
        if ( $tl != null ){
            $model->telefono = $tl;
        }
        if ( $zn != null ){
            $model->zona = $zn;
        }
        if ( $di != null ){
            $model->direccion = $di;
        }
        if ( $ins != null ){
            $model->instrucciones = $ins;
        }
        
        if ( $tip != null ){
            $model->tipo_pedido_id = $tip;
        }
        if ( $hor != null ){
            $model->hora_entrega = $hor;
        }
        if ( $suc != null ){
            $model->sucursal_delivery_id = $suc;
        }
        
        
        
        if ( $request->isPost && $model->load($request->post()) ) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $reqProductos = $request->post('idarticulo');
                $reqCantidades = $request->post('cantidad');

                $cliente = Cliente::findOne($request->post('Pedidodelivery')['cliente_id']);
                if ( !$cliente ){
                    throw new \Exception( 'El cliente no existe' );
                }
                $cliente->telefono = $model->telefono;
                $cliente->zona = $model->zona;
                $cliente->direccion = $model->direccion;

                // $horaActual = Carbon::now();
                // $horaEnd = Carbon::parse($model->hora_entrega);
                // // $difHors = $horaActual->diffInMinutes($horaEnd);
                // $idTipoPedidoProgramado = 3;
                
                // $entre = strtotime($model->fecha_entrega.' '.$model->hora_entrega);
                // $ho = strtotime(Carbon::now());


                // if ($difHors < $minutos || $entre < $ho ){
                //     throw new \Exception( 'La hora debe ser mas de '.$minutos.' minutos de la hora actual' );
                // }

                // if ($model->url_mapa){
                    
                // }else{
                if ( $model->tipo_pedido_id != 1){
                    $model->latitude = $request->post('Pedidodelivery')['ubicacion']['latitude'];
                    $model->longitude = $request->post('Pedidodelivery')['ubicacion']['longitude'];
                    $zoom = 12;
                    $model->zoom = strval($zoom);

                    $cliente->latitude = $model->latitude;
                    $cliente->longitude = $model->longitude;
                    $cliente->zoom = $model->zoom;
                }
                // }
                // if ( !$model->sucursal_delivery_id ){
                //     throw new \Exception( 'La sucural es requerida' );
                // }

                if ( !$model->validate() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors) );
                }
                if ( !$model->latitude && !$model->longitude  && $model->tipo_pedido_id != 1){
                    throw new \Exception( 'Url mapa invalido o pocicion no seleccionada' );
                }



                // tipo de pedido
                $horario = \app\models\Horario::findOne(1);
                if($model->tipo_pedido_id == 1){
                    if (!$model->sucursal_delivery_id){
                        throw new \Exception( 'seleccione la sucursal' );
                    }
                    $horaEntrega = Carbon::parse($model->hora_entrega);
                    $model->hora_entrega = $horaEntrega->addMinutes($horario->hora_pickup)->format('H:i');
                }

                if ($model->tipo_pedido_id == 2 || $model->tipo_pedido_id == 3 ){
                    $precioDelivery = Preciodelivery::findOne($model->precio_delivery_id);
                    if (!$precioDelivery){
                        throw new \Exception( 'Seleccione el precio delivery' );
                    }
                    $model->precio_delivery = floatval($precioDelivery->precio);
                }

                if($model->tipo_pedido_id == 2){
                    $model->sucursal_delivery_id = $precioDelivery->sucursal_id;
                    $model->hora_entrega = Carbon::now()->addMinutes($horario->hora_entrega_inmediata)->format('H:i');
                }
                if($model->tipo_pedido_id == 3){
                    $model->sucursal_delivery_id = $precioDelivery->sucursal_id;
                    $horaEntrega = Carbon::parse($model->hora_entrega);
                    $model->hora_entrega = $horaEntrega->addMinutes($horario->hora_entrega_programada)->format('H:i');
                }

                
                if ( !$model->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors));
                }

                if ( !$cliente->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($cliente->errors) );
                }
                
                if ( count($reqProductos) == 0 ){
                    throw new \Exception( 'No hay productos seleccionados' );
                }
                foreach ($reqProductos as $key => $item) {
                    $detalle = new PedidoDeliveryDetalle;
                    $detalle->producto_id = $item;
                    $detalle->cantidad = $reqCantidades[$key];
                    $detalle->pedido_delivery_id = $model->id;
                    $detalle->save();
                }
                $transaction->commit();
                Yii::$app->session->setFlash('success', 'Pedido registrado');
                return $this->redirect(['view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('create', [
            'model' => $model,
            'productos' => $productos,
            'clientes' => $clientes,
            'reqProductos' => $reqProductos,
            'reqCantidades' => $reqCantidades,
        ]);
    }
    
    public function actionFacturado($id){
        $model = $this->findModel($id);
        if ($model->facturado == 0){
            $model->facturado = 1;
        }else{
            $model->facturado = 0;
        }
        if (!$model->save()){
            $error = ErrorsComponent::formatJustString($model->errors);
            Yii::$app->session->setFlash('warning', $error);
        }
        // return $model->facturado;
        if(Yii::$app->request->referrer){
            return $this->redirect(Yii::$app->request->referrer);
        }else{
            return $this->redirect(['index']);
        }
    }

    public function actionCambiarEstado($id){
        $model = $this->findModel($id);
        $model->estado = Pedidodelivery::ESTADO_TERMINADO;
        if (!$model->save()){
            $error = ErrorsComponent::formatJustString($model->errors);
            Yii::$app->session->setFlash('warning', $error);
        }
        return $this->redirect(['view', 'id'=>$model->id]);
    }

    /**
     * Updates an existing Pedidodelivery model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Pedidodelivery model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Pedidodelivery model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Pedidodelivery the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Pedidodelivery::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionGetProducto($id){
        $producto = Producto::findOne($id);
        if (!$producto){
            return  json_encode([
                'status'=>false,
                'data'=>null,
            ]);
        }
        return json_encode([
                'status'=>true,
                'data'=>[
                    'id'=>$producto->id,
                    'producto'=>$producto->producto,
                    'tipo'=>$producto->categoria->nombre,
                    'detalle'=>$producto->detalle,
                    'costo'=>$producto->costo,
                    'estado'=>$producto->estado,
                    'categoria_producto_id'=>$producto->categoria_producto_id,
                ],
            ]);
    }
    
    public function actionGetCliente($id){
        $cliente = Cliente::findOne($id);
        if (!$cliente){
            return  json_encode([
                'status'=>false,
                'data'=>null,
            ]);
        }
        return json_encode([
                'status'=>true,
                'cliente'=>[
                    'id'=>$cliente->id,
                    'razon_social'=>$cliente->razon_social,
                    'nit'=>$cliente->nit,
                    'telefono'=>$cliente->telefono,
                    'zona'=>$cliente->zona,
                    'direccion'=>$cliente->direccion,
                    'zoom'=>$cliente->zoom,
                    'foto'=>$cliente->foto,
                    'latitude'=>$cliente->latitude,
                    'longitude'=>$cliente->longitude,
                ],
            ]);
    }

    public function actionAsignarSucursalprecio($pe){
        $model = Pedidodelivery::findOne($pe);
        $precio_pedido = 0;
        if ($model->precioDelivery !== null){
            $precio_pedido = $model->precioDelivery->precio;
        }
        if ($model->load(Yii::$app->request->post())) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $precioDelivery = Preciodelivery::findOne($model->precio_delivery_id);
                if ($precioDelivery){
                    $model->precio_delivery = floatval($precioDelivery->precio);
                }
                if ( !$model->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors) );
                }
                $transaction->commit();
                return $this->redirect(['/pedidodelivery/view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('asignar_sucursal_precio', [
            'model' => $model,
            'precio_pedido' => $precio_pedido,
        ]);
    }
    
    public function actionModificarPrecio($pe){
        $model = Pedidodelivery::findOne($pe);
        $precio_pedido = 0;
        if ($model->precioDelivery !== null){
            $precio_pedido = $model->precioDelivery->precio;
        }
        if ($model->load(Yii::$app->request->post())) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                if(!$model->precio_delivery){
                    throw new \Exception( 'El precio es obligatorio' );
                }
                if ( !$model->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors) );
                }
                $transaction->commit();
                return $this->redirect(['/pedidodelivery/view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('modificar_precio', [
            'model' => $model,
            'precio_pedido' => $precio_pedido,
        ]);
    }
    
    public function actionModificarEstado($pe){
        $model = Pedidodelivery::findOne($pe);
        $precio_pedido = 0;
        if ($model->precioDelivery !== null){
            $precio_pedido = $model->precioDelivery->precio;
        }
        if ($model->load(Yii::$app->request->post())) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                if ( !$model->save() ){
                    throw new \Exception( ErrorsComponent::formatJustString($model->errors) );
                }
                $transaction->commit();
                return $this->redirect(['/pedidodelivery/view', 'id' => $model->id]);
            } catch (\Throwable $e) {
                $transaction->rollBack();
                Yii::$app->session->setFlash('warning', $e->getMessage() );
            }
        }

        return $this->render('modificar_estado', [
            'model' => $model,
            'precio_pedido' => $precio_pedido,
        ]);
    }

    public function actionGetCordenadas(){
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        $precios = Preciodelivery::find()
            ->all();
        return ArrayHelper::toArray($precios, [
            Preciodelivery::className() => [
                'id',
                'estado',
                'cordinates'=>function($model){
                    return ArrayHelper::toArray($model->cordenadas, [
                        PrecioCoordinates::className() => [
                            'lng'=>function($model){
                                return (double)$model->lng;
                            },
                            'lat'=>function($model){
                                return (double)$model->lat;
                            },
                        ],
                    ]);
                },
            ],
        ]);
    }

    public function actionGetPrecioDelivery($id){
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        $precioDelivery = Preciodelivery::findOne($id);
        return $precioDelivery;
    }

    public function actionModificarHora($id){
        $request = \Yii::$app->request;
        $model = $this->findModel($id);
        if ( $request->isPost && $model->load($request->post()) && $model->save() ){
            return $this->redirect(['view', 'id'=>$model->id]);
        }
        return $this->render('_hora_entrega', [
            'model'=>$model,
        ]);
    }
}