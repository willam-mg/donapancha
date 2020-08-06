<?php

namespace app\controllers;

use Yii;
use app\models\Preciodelivery;
use app\models\PreciodeliverySearch;
use app\models\PrecioCoordinates;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * PreciodeliveryController implements the CRUD actions for Preciodelivery model.
 */
class PreciodeliveryController extends Controller
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
     * Lists all Preciodelivery models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PreciodeliverySearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Preciodelivery model.
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
     * Creates a new Preciodelivery model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Preciodelivery();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Preciodelivery model.
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
     * Deletes an existing Preciodelivery model.
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
     * Finds the Preciodelivery model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Preciodelivery the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Preciodelivery::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionRegistrarPrecios(){
        $precios = array (
            0 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '10 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1599889,
                    1 => -17.3813648,
                    ),
                    1 => 
                    array (
                    0 => -66.1622097,
                    1 => -17.382532,
                    ),
                    2 => 
                    array (
                    0 => -66.1630786,
                    1 => -17.3844058,
                    ),
                    3 => 
                    array (
                    0 => -66.1637728,
                    1 => -17.3859182,
                    ),
                    4 => 
                    array (
                    0 => -66.1646847,
                    1 => -17.3877202,
                    ),
                    5 => 
                    array (
                    0 => -66.1651447,
                    1 => -17.3889916,
                    ),
                    6 => 
                    array (
                    0 => -66.1659823,
                    1 => -17.3907363,
                    ),
                    7 => 
                    array (
                    0 => -66.1669781,
                    1 => -17.3939323,
                    ),
                    8 => 
                    array (
                    0 => -66.1535133,
                    1 => -17.3915514,
                    ),
                    9 => 
                    array (
                    0 => -66.1515227,
                    1 => -17.3912007,
                    ),
                    10 => 
                    array (
                    0 => -66.1508635,
                    1 => -17.3910854,
                    ),
                    11 => 
                    array (
                    0 => -66.1501545,
                    1 => -17.3909522,
                    ),
                    12 => 
                    array (
                    0 => -66.1468051,
                    1 => -17.3903248,
                    ),
                    13 => 
                    array (
                    0 => -66.1400918,
                    1 => -17.3890673,
                    ),
                    14 => 
                    array (
                    0 => -66.1404202,
                    1 => -17.3883694,
                    ),
                    15 => 
                    array (
                    0 => -66.1405072,
                    1 => -17.3880196,
                    ),
                    16 => 
                    array (
                    0 => -66.1406306,
                    1 => -17.3869766,
                    ),
                    17 => 
                    array (
                    0 => -66.1407084,
                    1 => -17.386432,
                    ),
                    18 => 
                    array (
                    0 => -66.1407325,
                    1 => -17.3858388,
                    ),
                    19 => 
                    array (
                    0 => -66.1408291,
                    1 => -17.3853992,
                    ),
                    20 => 
                    array (
                    0 => -66.140974,
                    1 => -17.3849647,
                    ),
                    21 => 
                    array (
                    0 => -66.1412396,
                    1 => -17.3845532,
                    ),
                    22 => 
                    array (
                    0 => -66.1415186,
                    1 => -17.3841878,
                    ),
                    23 => 
                    array (
                    0 => -66.1420744,
                    1 => -17.3831614,
                    ),
                    24 => 
                    array (
                    0 => -66.1421915,
                    1 => -17.3825816,
                    ),
                    25 => 
                    array (
                    0 => -66.1419951,
                    1 => -17.3820204,
                    ),
                    26 => 
                    array (
                    0 => -66.1416486,
                    1 => -17.3816179,
                    ),
                    27 => 
                    array (
                    0 => -66.1418236,
                    1 => -17.3794434,
                    ),
                    28 => 
                    array (
                    0 => -66.1422776,
                    1 => -17.3769515,
                    ),
                    29 => 
                    array (
                    0 => -66.1507039,
                    1 => -17.3789945,
                    ),
                    30 => 
                    array (
                    0 => -66.1599889,
                    1 => -17.3813648,
                    ),
                ),
                ),
            ),
            ),
            1 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '8 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.184429,
                    1 => -17.3933973,
                    ),
                    1 => 
                    array (
                    0 => -66.1821276,
                    1 => -17.3872542,
                    ),
                    2 => 
                    array (
                    0 => -66.1819399,
                    1 => -17.3846331,
                    ),
                    3 => 
                    array (
                    0 => -66.1819559,
                    1 => -17.3837321,
                    ),
                    4 => 
                    array (
                    0 => -66.1819559,
                    1 => -17.3831588,
                    ),
                    5 => 
                    array (
                    0 => -66.1862739,
                    1 => -17.3822142,
                    ),
                    6 => 
                    array (
                    0 => -66.1891228,
                    1 => -17.382053,
                    ),
                    7 => 
                    array (
                    0 => -66.1921533,
                    1 => -17.3819685,
                    ),
                    8 => 
                    array (
                    0 => -66.1958176,
                    1 => -17.3815205,
                    ),
                    9 => 
                    array (
                    0 => -66.1990792,
                    1 => -17.3813977,
                    ),
                    10 => 
                    array (
                    0 => -66.2021262,
                    1 => -17.3811929,
                    ),
                    11 => 
                    array (
                    0 => -66.2081773,
                    1 => -17.3811929,
                    ),
                    12 => 
                    array (
                    0 => -66.2079627,
                    1 => -17.3862713,
                    ),
                    13 => 
                    array (
                    0 => -66.2083918,
                    1 => -17.4000316,
                    ),
                    14 => 
                    array (
                    0 => -66.186736,
                    1 => -17.4005519,
                    ),
                    15 => 
                    array (
                    0 => -66.1850512,
                    1 => -17.3961513,
                    ),
                    16 => 
                    array (
                    0 => -66.184429,
                    1 => -17.3933973,
                    ),
                ),
                ),
            ),
            ),
            2 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '12 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.186736,
                    1 => -17.4005519,
                    ),
                    1 => 
                    array (
                    0 => -66.1797731,
                    1 => -17.4048396,
                    ),
                    2 => 
                    array (
                    0 => -66.1765114,
                    1 => -17.4066414,
                    ),
                    3 => 
                    array (
                    0 => -66.1745373,
                    1 => -17.4091394,
                    ),
                    4 => 
                    array (
                    0 => -66.1724345,
                    1 => -17.4068462,
                    ),
                    5 => 
                    array (
                    0 => -66.1701171,
                    1 => -17.4041025,
                    ),
                    6 => 
                    array (
                    0 => -66.1693446,
                    1 => -17.4023007,
                    ),
                    7 => 
                    array (
                    0 => -66.1684863,
                    1 => -17.3989836,
                    ),
                    8 => 
                    array (
                    0 => -66.1672135,
                    1 => -17.3940342,
                    ),
                    9 => 
                    array (
                    0 => -66.1662177,
                    1 => -17.3908382,
                    ),
                    10 => 
                    array (
                    0 => -66.1652032,
                    1 => -17.3885406,
                    ),
                    11 => 
                    array (
                    0 => -66.1649201,
                    1 => -17.3878221,
                    ),
                    12 => 
                    array (
                    0 => -66.1633141,
                    1 => -17.3845077,
                    ),
                    13 => 
                    array (
                    0 => -66.1664072,
                    1 => -17.3824286,
                    ),
                    14 => 
                    array (
                    0 => -66.1695592,
                    1 => -17.383708,
                    ),
                    15 => 
                    array (
                    0 => -66.1765326,
                    1 => -17.3819301,
                    ),
                    16 => 
                    array (
                    0 => -66.179381,
                    1 => -17.3828311,
                    ),
                    17 => 
                    array (
                    0 => -66.1819559,
                    1 => -17.3831588,
                    ),
                    18 => 
                    array (
                    0 => -66.1819399,
                    1 => -17.3846331,
                    ),
                    19 => 
                    array (
                    0 => -66.1821276,
                    1 => -17.3872542,
                    ),
                    20 => 
                    array (
                    0 => -66.184429,
                    1 => -17.3933973,
                    ),
                    21 => 
                    array (
                    0 => -66.1850512,
                    1 => -17.3961513,
                    ),
                    22 => 
                    array (
                    0 => -66.186736,
                    1 => -17.4005519,
                    ),
                ),
                ),
            ),
            ),
            3 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '8 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.136811,
                    1 => -17.3748393,
                    ),
                    1 => 
                    array (
                    0 => -66.1368753,
                    1 => -17.3726789,
                    ),
                    2 => 
                    array (
                    0 => -66.1382325,
                    1 => -17.371829,
                    ),
                    3 => 
                    array (
                    0 => -66.140448,
                    1 => -17.3712863,
                    ),
                    4 => 
                    array (
                    0 => -66.1430229,
                    1 => -17.369648,
                    ),
                    5 => 
                    array (
                    0 => -66.1453403,
                    1 => -17.368665,
                    ),
                    6 => 
                    array (
                    0 => -66.1496105,
                    1 => -17.3670267,
                    ),
                    7 => 
                    array (
                    0 => -66.1496319,
                    1 => -17.3732523,
                    ),
                    8 => 
                    array (
                    0 => -66.1497744,
                    1 => -17.3756612,
                    ),
                    9 => 
                    array (
                    0 => -66.149753,
                    1 => -17.378436,
                    ),
                    10 => 
                    array (
                    0 => -66.142513,
                    1 => -17.3770534,
                    ),
                    11 => 
                    array (
                    0 => -66.141537,
                    1 => -17.3768104,
                    ),
                    12 => 
                    array (
                    0 => -66.1400081,
                    1 => -17.3763957,
                    ),
                    13 => 
                    array (
                    0 => -66.1378623,
                    1 => -17.3756483,
                    ),
                    14 => 
                    array (
                    0 => -66.136811,
                    1 => -17.3748393,
                    ),
                ),
                ),
            ),
            ),
            4 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '8 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1670204,
                    1 => -17.3942594,
                    ),
                    1 => 
                    array (
                    0 => -66.1673018,
                    1 => -17.3953292,
                    ),
                    2 => 
                    array (
                    0 => -66.1675375,
                    1 => -17.3962394,
                    ),
                    3 => 
                    array (
                    0 => -66.1679928,
                    1 => -17.3980599,
                    ),
                    4 => 
                    array (
                    0 => -66.1689303,
                    1 => -17.401665,
                    ),
                    5 => 
                    array (
                    0 => -66.1690214,
                    1 => -17.4020335,
                    ),
                    6 => 
                    array (
                    0 => -66.169118,
                    1 => -17.4024264,
                    ),
                    7 => 
                    array (
                    0 => -66.1691555,
                    1 => -17.4025455,
                    ),
                    8 => 
                    array (
                    0 => -66.1691917,
                    1 => -17.4026474,
                    ),
                    9 => 
                    array (
                    0 => -66.1692252,
                    1 => -17.4027185,
                    ),
                    10 => 
                    array (
                    0 => -66.1692762,
                    1 => -17.4028365,
                    ),
                    11 => 
                    array (
                    0 => -66.1694264,
                    1 => -17.4031699,
                    ),
                    12 => 
                    array (
                    0 => -66.169924,
                    1 => -17.4043277,
                    ),
                    13 => 
                    array (
                    0 => -66.170604,
                    1 => -17.4051458,
                    ),
                    14 => 
                    array (
                    0 => -66.1712007,
                    1 => -17.4058458,
                    ),
                    15 => 
                    array (
                    0 => -66.1718056,
                    1 => -17.4065534,
                    ),
                    16 => 
                    array (
                    0 => -66.1722482,
                    1 => -17.4071005,
                    ),
                    17 => 
                    array (
                    0 => -66.1725673,
                    1 => -17.4074326,
                    ),
                    18 => 
                    array (
                    0 => -66.1733506,
                    1 => -17.4082963,
                    ),
                    19 => 
                    array (
                    0 => -66.174129,
                    1 => -17.409144,
                    ),
                    20 => 
                    array (
                    0 => -66.1743416,
                    1 => -17.4093723,
                    ),
                    21 => 
                    array (
                    0 => -66.1730528,
                    1 => -17.4102619,
                    ),
                    22 => 
                    array (
                    0 => -66.1720229,
                    1 => -17.4102619,
                    ),
                    23 => 
                    array (
                    0 => -66.1696196,
                    1 => -17.4103847,
                    ),
                    24 => 
                    array (
                    0 => -66.1670876,
                    1 => -17.4105895,
                    ),
                    25 => 
                    array (
                    0 => -66.1652422,
                    1 => -17.410999,
                    ),
                    26 => 
                    array (
                    0 => -66.1646843,
                    1 => -17.4114085,
                    ),
                    27 => 
                    array (
                    0 => -66.1642123,
                    1 => -17.4112856,
                    ),
                    28 => 
                    array (
                    0 => -66.1635256,
                    1 => -17.4112447,
                    ),
                    29 => 
                    array (
                    0 => -66.160307,
                    1 => -17.4127188,
                    ),
                    30 => 
                    array (
                    0 => -66.1585474,
                    1 => -17.413415,
                    ),
                    31 => 
                    array (
                    0 => -66.1570883,
                    1 => -17.4137016,
                    ),
                    32 => 
                    array (
                    0 => -66.1556292,
                    1 => -17.4135788,
                    ),
                    33 => 
                    array (
                    0 => -66.1544276,
                    1 => -17.4130055,
                    ),
                    34 => 
                    array (
                    0 => -66.1525393,
                    1 => -17.4118589,
                    ),
                    35 => 
                    array (
                    0 => -66.1488056,
                    1 => -17.4093201,
                    ),
                    36 => 
                    array (
                    0 => -66.1452007,
                    1 => -17.4067607,
                    ),
                    37 => 
                    array (
                    0 => -66.1445811,
                    1 => -17.4063538,
                    ),
                    38 => 
                    array (
                    0 => -66.1449862,
                    1 => -17.4057574,
                    ),
                    39 => 
                    array (
                    0 => -66.1460162,
                    1 => -17.4041194,
                    ),
                    40 => 
                    array (
                    0 => -66.1470461,
                    1 => -17.402768,
                    ),
                    41 => 
                    array (
                    0 => -66.1469174,
                    1 => -17.4018262,
                    ),
                    42 => 
                    array (
                    0 => -66.1360169,
                    1 => -17.39941,
                    ),
                    43 => 
                    array (
                    0 => -66.1354161,
                    1 => -17.3975262,
                    ),
                    44 => 
                    array (
                    0 => -66.1363173,
                    1 => -17.3947415,
                    ),
                    45 => 
                    array (
                    0 => -66.1370039,
                    1 => -17.3928167,
                    ),
                    46 => 
                    array (
                    0 => -66.1376047,
                    1 => -17.3920386,
                    ),
                    47 => 
                    array (
                    0 => -66.139021,
                    1 => -17.3910147,
                    ),
                    48 => 
                    array (
                    0 => -66.1395359,
                    1 => -17.39081,
                    ),
                    49 => 
                    array (
                    0 => -66.1401341,
                    1 => -17.3893944,
                    ),
                    50 => 
                    array (
                    0 => -66.1435271,
                    1 => -17.3900318,
                    ),
                    51 => 
                    array (
                    0 => -66.1509514,
                    1 => -17.3914243,
                    ),
                    52 => 
                    array (
                    0 => -66.1603606,
                    1 => -17.3930701,
                    ),
                    53 => 
                    array (
                    0 => -66.1670204,
                    1 => -17.3942594,
                    ),
                ),
                ),
            ),
            ),
            5 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1653097,
                    1 => -17.3791015,
                    ),
                    1 => 
                    array (
                    0 => -66.163121,
                    1 => -17.3785077,
                    ),
                    2 => 
                    array (
                    0 => -66.1611041,
                    1 => -17.3780367,
                    ),
                    3 => 
                    array (
                    0 => -66.1626996,
                    1 => -17.3725151,
                    ),
                    4 => 
                    array (
                    0 => -66.1567129,
                    1 => -17.3728018,
                    ),
                    5 => 
                    array (
                    0 => -66.1563053,
                    1 => -17.3666581,
                    ),
                    6 => 
                    array (
                    0 => -66.1543019,
                    1 => -17.3666914,
                    ),
                    7 => 
                    array (
                    0 => -66.1570056,
                    1 => -17.3663842,
                    ),
                    8 => 
                    array (
                    0 => -66.1580785,
                    1 => -17.3658722,
                    ),
                    9 => 
                    array (
                    0 => -66.1632283,
                    1 => -17.3647253,
                    ),
                    10 => 
                    array (
                    0 => -66.1671765,
                    1 => -17.3633327,
                    ),
                    11 => 
                    array (
                    0 => -66.1697515,
                    1 => -17.3621039,
                    ),
                    12 => 
                    array (
                    0 => -66.1701806,
                    1 => -17.3634556,
                    ),
                    13 => 
                    array (
                    0 => -66.1709102,
                    1 => -17.3666914,
                    ),
                    14 => 
                    array (
                    0 => -66.1712106,
                    1 => -17.3693946,
                    ),
                    15 => 
                    array (
                    0 => -66.1721762,
                    1 => -17.3718931,
                    ),
                    16 => 
                    array (
                    0 => -66.1724444,
                    1 => -17.3735006,
                    ),
                    17 => 
                    array (
                    0 => -66.1728843,
                    1 => -17.3761526,
                    ),
                    18 => 
                    array (
                    0 => -66.1711677,
                    1 => -17.3765724,
                    ),
                    19 => 
                    array (
                    0 => -66.1690648,
                    1 => -17.377238,
                    ),
                    20 => 
                    array (
                    0 => -66.1671658,
                    1 => -17.3781595,
                    ),
                    21 => 
                    array (
                    0 => -66.1653097,
                    1 => -17.3791015,
                    ),
                ),
                ),
            ),
            ),
            6 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '13 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1721762,
                    1 => -17.3718931,
                    ),
                    1 => 
                    array (
                    0 => -66.1801915,
                    1 => -17.3714009,
                    ),
                    2 => 
                    array (
                    0 => -66.1854436,
                    1 => -17.3709908,
                    ),
                    3 => 
                    array (
                    0 => -66.186396,
                    1 => -17.3704581,
                    ),
                    4 => 
                    array (
                    0 => -66.1871767,
                    1 => -17.3701302,
                    ),
                    5 => 
                    array (
                    0 => -66.1887217,
                    1 => -17.3696387,
                    ),
                    6 => 
                    array (
                    0 => -66.1933111,
                    1 => -17.3682546,
                    ),
                    7 => 
                    array (
                    0 => -66.1987588,
                    1 => -17.3667884,
                    ),
                    8 => 
                    array (
                    0 => -66.2037206,
                    1 => -17.3675703,
                    ),
                    9 => 
                    array (
                    0 => -66.2075615,
                    1 => -17.3683076,
                    ),
                    10 => 
                    array (
                    0 => -66.2073882,
                    1 => -17.3701729,
                    ),
                    11 => 
                    array (
                    0 => -66.2076028,
                    1 => -17.3745962,
                    ),
                    12 => 
                    array (
                    0 => -66.2081773,
                    1 => -17.3811929,
                    ),
                    13 => 
                    array (
                    0 => -66.2059885,
                    1 => -17.381111,
                    ),
                    14 => 
                    array (
                    0 => -66.2021262,
                    1 => -17.3811929,
                    ),
                    15 => 
                    array (
                    0 => -66.1990792,
                    1 => -17.3813977,
                    ),
                    16 => 
                    array (
                    0 => -66.1958176,
                    1 => -17.3815205,
                    ),
                    17 => 
                    array (
                    0 => -66.191767,
                    1 => -17.3819685,
                    ),
                    18 => 
                    array (
                    0 => -66.1879641,
                    1 => -17.3821758,
                    ),
                    19 => 
                    array (
                    0 => -66.1862739,
                    1 => -17.3822142,
                    ),
                    20 => 
                    array (
                    0 => -66.1819559,
                    1 => -17.3831588,
                    ),
                    21 => 
                    array (
                    0 => -66.179381,
                    1 => -17.3828311,
                    ),
                    22 => 
                    array (
                    0 => -66.1765487,
                    1 => -17.3819301,
                    ),
                    23 => 
                    array (
                    0 => -66.1695752,
                    1 => -17.383708,
                    ),
                    24 => 
                    array (
                    0 => -66.1664232,
                    1 => -17.3824286,
                    ),
                    25 => 
                    array (
                    0 => -66.1633141,
                    1 => -17.3845077,
                    ),
                    26 => 
                    array (
                    0 => -66.1624451,
                    1 => -17.3826339,
                    ),
                    27 => 
                    array (
                    0 => -66.1602243,
                    1 => -17.3814667,
                    ),
                    28 => 
                    array (
                    0 => -66.1611041,
                    1 => -17.3780367,
                    ),
                    29 => 
                    array (
                    0 => -66.1653097,
                    1 => -17.3791015,
                    ),
                    30 => 
                    array (
                    0 => -66.1690648,
                    1 => -17.377238,
                    ),
                    31 => 
                    array (
                    0 => -66.1711677,
                    1 => -17.3765724,
                    ),
                    32 => 
                    array (
                    0 => -66.1728843,
                    1 => -17.3761526,
                    ),
                    33 => 
                    array (
                    0 => -66.1721762,
                    1 => -17.3718931,
                    ),
                ),
                ),
            ),
            ),
            7 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1987588,
                    1 => -17.3667884,
                    ),
                    1 => 
                    array (
                    0 => -66.1933648,
                    1 => -17.3682238,
                    ),
                    2 => 
                    array (
                    0 => -66.1897987,
                    1 => -17.3692999,
                    ),
                    3 => 
                    array (
                    0 => -66.1894855,
                    1 => -17.3694053,
                    ),
                    4 => 
                    array (
                    0 => -66.1889426,
                    1 => -17.3695604,
                    ),
                    5 => 
                    array (
                    0 => -66.1885178,
                    1 => -17.3697001,
                    ),
                    6 => 
                    array (
                    0 => -66.1871767,
                    1 => -17.3701302,
                    ),
                    7 => 
                    array (
                    0 => -66.1870905,
                    1 => -17.3701486,
                    ),
                    8 => 
                    array (
                    0 => -66.186396,
                    1 => -17.3704581,
                    ),
                    9 => 
                    array (
                    0 => -66.1854436,
                    1 => -17.3709908,
                    ),
                    10 => 
                    array (
                    0 => -66.1825518,
                    1 => -17.3712012,
                    ),
                    11 => 
                    array (
                    0 => -66.1807275,
                    1 => -17.3713475,
                    ),
                    12 => 
                    array (
                    0 => -66.1765323,
                    1 => -17.3716255,
                    ),
                    13 => 
                    array (
                    0 => -66.1723532,
                    1 => -17.3718777,
                    ),
                    14 => 
                    array (
                    0 => -66.1721762,
                    1 => -17.3718931,
                    ),
                    15 => 
                    array (
                    0 => -66.1714895,
                    1 => -17.3700781,
                    ),
                    16 => 
                    array (
                    0 => -66.1712106,
                    1 => -17.3693946,
                    ),
                    17 => 
                    array (
                    0 => -66.1710872,
                    1 => -17.3682119,
                    ),
                    18 => 
                    array (
                    0 => -66.1709102,
                    1 => -17.3666914,
                    ),
                    19 => 
                    array (
                    0 => -66.1706313,
                    1 => -17.3654113,
                    ),
                    20 => 
                    array (
                    0 => -66.170457,
                    1 => -17.3646229,
                    ),
                    21 => 
                    array (
                    0 => -66.1703335,
                    1 => -17.3640393,
                    ),
                    22 => 
                    array (
                    0 => -66.1701806,
                    1 => -17.3634556,
                    ),
                    23 => 
                    array (
                    0 => -66.1697515,
                    1 => -17.3621039,
                    ),
                    24 => 
                    array (
                    0 => -66.1727002,
                    1 => -17.3610363,
                    ),
                    25 => 
                    array (
                    0 => -66.1766574,
                    1 => -17.3591904,
                    ),
                    26 => 
                    array (
                    0 => -66.1784444,
                    1 => -17.3582675,
                    ),
                    27 => 
                    array (
                    0 => -66.1794469,
                    1 => -17.3577773,
                    ),
                    28 => 
                    array (
                    0 => -66.1833092,
                    1 => -17.3571629,
                    ),
                    29 => 
                    array (
                    0 => -66.187515,
                    1 => -17.3564255,
                    ),
                    30 => 
                    array (
                    0 => -66.1948965,
                    1 => -17.355934,
                    ),
                    31 => 
                    array (
                    0 => -66.1987588,
                    1 => -17.3667884,
                    ),
                ),
                ),
            ),
            ),
            8 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1840818,
                    1 => -17.3501993,
                    ),
                    1 => 
                    array (
                    0 => -66.1855838,
                    1 => -17.3514692,
                    ),
                    2 => 
                    array (
                    0 => -66.1900255,
                    1 => -17.3539268,
                    ),
                    3 => 
                    array (
                    0 => -66.1948965,
                    1 => -17.355934,
                    ),
                    4 => 
                    array (
                    0 => -66.187515,
                    1 => -17.3564255,
                    ),
                    5 => 
                    array (
                    0 => -66.1827192,
                    1 => -17.3572448,
                    ),
                    6 => 
                    array (
                    0 => -66.1794469,
                    1 => -17.3577773,
                    ),
                    7 => 
                    array (
                    0 => -66.1742387,
                    1 => -17.3603156,
                    ),
                    8 => 
                    array (
                    0 => -66.1727002,
                    1 => -17.3610363,
                    ),
                    9 => 
                    array (
                    0 => -66.1697515,
                    1 => -17.3621039,
                    ),
                    10 => 
                    array (
                    0 => -66.1670932,
                    1 => -17.3561889,
                    ),
                    11 => 
                    array (
                    0 => -66.1713848,
                    1 => -17.354069,
                    ),
                    12 => 
                    array (
                    0 => -66.1754188,
                    1 => -17.3513655,
                    ),
                    13 => 
                    array (
                    0 => -66.1773071,
                    1 => -17.3499728,
                    ),
                    14 => 
                    array (
                    0 => -66.1791953,
                    1 => -17.3489077,
                    ),
                    15 => 
                    array (
                    0 => -66.1804828,
                    1 => -17.3484162,
                    ),
                    16 => 
                    array (
                    0 => -66.1815128,
                    1 => -17.3480885,
                    ),
                    17 => 
                    array (
                    0 => -66.1823926,
                    1 => -17.3488565,
                    ),
                    18 => 
                    array (
                    0 => -66.1840818,
                    1 => -17.3501993,
                    ),
                ),
                ),
            ),
            ),
            9 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '12 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1673558,
                    1 => -17.4106638,
                    ),
                    1 => 
                    array (
                    0 => -66.1724967,
                    1 => -17.4164874,
                    ),
                    2 => 
                    array (
                    0 => -66.1737841,
                    1 => -17.4185757,
                    ),
                    3 => 
                    array (
                    0 => -66.1744708,
                    1 => -17.419886,
                    ),
                    4 => 
                    array (
                    0 => -66.1622399,
                    1 => -17.4301634,
                    ),
                    5 => 
                    array (
                    0 => -66.1526269,
                    1 => -17.4292627,
                    ),
                    6 => 
                    array (
                    0 => -66.1539143,
                    1 => -17.4270516,
                    ),
                    7 => 
                    array (
                    0 => -66.154601,
                    1 => -17.4239397,
                    ),
                    8 => 
                    array (
                    0 => -66.153057,
                    1 => -17.4217678,
                    ),
                    9 => 
                    array (
                    0 => -66.1518125,
                    1 => -17.4180416,
                    ),
                    10 => 
                    array (
                    0 => -66.1503963,
                    1 => -17.4155438,
                    ),
                    11 => 
                    array (
                    0 => -66.1483793,
                    1 => -17.4133325,
                    ),
                    12 => 
                    array (
                    0 => -66.1466627,
                    1 => -17.4128412,
                    ),
                    13 => 
                    array (
                    0 => -66.1463623,
                    1 => -17.4094014,
                    ),
                    14 => 
                    array (
                    0 => -66.1470597,
                    1 => -17.4080245,
                    ),
                    15 => 
                    array (
                    0 => -66.1517267,
                    1 => -17.411367,
                    ),
                    16 => 
                    array (
                    0 => -66.1549024,
                    1 => -17.4133325,
                    ),
                    17 => 
                    array (
                    0 => -66.1572036,
                    1 => -17.4137426,
                    ),
                    18 => 
                    array (
                    0 => -66.1594515,
                    1 => -17.4131688,
                    ),
                    19 => 
                    array (
                    0 => -66.1621336,
                    1 => -17.4120017,
                    ),
                    20 => 
                    array (
                    0 => -66.1637938,
                    1 => -17.411319,
                    ),
                    21 => 
                    array (
                    0 => -66.1649525,
                    1 => -17.4114828,
                    ),
                    22 => 
                    array (
                    0 => -66.1655104,
                    1 => -17.4110733,
                    ),
                    23 => 
                    array (
                    0 => -66.1673558,
                    1 => -17.4106638,
                    ),
                ),
                ),
            ),
            ),
            10 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '12 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.2079627,
                    1 => -17.3862713,
                    ),
                    1 => 
                    array (
                    0 => -66.2081773,
                    1 => -17.3811929,
                    ),
                    2 => 
                    array (
                    0 => -66.2292349,
                    1 => -17.3834644,
                    ),
                    3 => 
                    array (
                    0 => -66.2293113,
                    1 => -17.3895033,
                    ),
                    4 => 
                    array (
                    0 => -66.2312853,
                    1 => -17.3935986,
                    ),
                    5 => 
                    array (
                    0 => -66.2302554,
                    1 => -17.3993319,
                    ),
                    6 => 
                    array (
                    0 => -66.2083918,
                    1 => -17.4000316,
                    ),
                    7 => 
                    array (
                    0 => -66.2079627,
                    1 => -17.3862713,
                    ),
                ),
                ),
            ),
            ),
            11 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.2292349,
                    1 => -17.3834644,
                    ),
                    1 => 
                    array (
                    0 => -66.2463097,
                    1 => -17.3834419,
                    ),
                    2 => 
                    array (
                    0 => -66.2463526,
                    1 => -17.3908954,
                    ),
                    3 => 
                    array (
                    0 => -66.2467388,
                    1 => -17.398349,
                    ),
                    4 => 
                    array (
                    0 => -66.2302554,
                    1 => -17.3993319,
                    ),
                    5 => 
                    array (
                    0 => -66.2312853,
                    1 => -17.3935986,
                    ),
                    6 => 
                    array (
                    0 => -66.2293113,
                    1 => -17.3895033,
                    ),
                    7 => 
                    array (
                    0 => -66.2292349,
                    1 => -17.3834644,
                    ),
                ),
                ),
            ),
            ),
            12 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'QUILLACOLLO',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.2463097,
                    1 => -17.3834419,
                    ),
                    1 => 
                    array (
                    0 => -66.2648258,
                    1 => -17.384237,
                    ),
                    2 => 
                    array (
                    0 => -66.2650404,
                    1 => -17.3988164,
                    ),
                    3 => 
                    array (
                    0 => -66.2588606,
                    1 => -17.3990621,
                    ),
                    4 => 
                    array (
                    0 => -66.2544833,
                    1 => -17.3990622,
                    ),
                    5 => 
                    array (
                    0 => -66.2467979,
                    1 => -17.3983259,
                    ),
                    6 => 
                    array (
                    0 => -66.2463688,
                    1 => -17.3910567,
                    ),
                    7 => 
                    array (
                    0 => -66.2463097,
                    1 => -17.3834419,
                    ),
                ),
                ),
            ),
            ),
            13 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VINTO',
                'description' => '28 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.285409,
                    1 => -17.3848744,
                    ),
                    1 => 
                    array (
                    0 => -66.3011871,
                    1 => -17.3854764,
                    ),
                    2 => 
                    array (
                    0 => -66.3010154,
                    1 => -17.4013663,
                    ),
                    3 => 
                    array (
                    0 => -66.2852081,
                    1 => -17.400668,
                    ),
                    4 => 
                    array (
                    0 => -66.285409,
                    1 => -17.3848744,
                    ),
                ),
                ),
            ),
            ),
            14 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1623177,
                    1 => -17.4298972,
                    ),
                    1 => 
                    array (
                    0 => -66.1621579,
                    1 => -17.4341894,
                    ),
                    2 => 
                    array (
                    0 => -66.1642179,
                    1 => -17.4342713,
                    ),
                    3 => 
                    array (
                    0 => -66.1653337,
                    1 => -17.4384475,
                    ),
                    4 => 
                    array (
                    0 => -66.1621579,
                    1 => -17.4397577,
                    ),
                    5 => 
                    array (
                    0 => -66.1600122,
                    1 => -17.4403309,
                    ),
                    6 => 
                    array (
                    0 => -66.1576947,
                    1 => -17.4412316,
                    ),
                    7 => 
                    array (
                    0 => -66.155549,
                    1 => -17.4417229,
                    ),
                    8 => 
                    array (
                    0 => -66.1506566,
                    1 => -17.4424599,
                    ),
                    9 => 
                    array (
                    0 => -66.14894,
                    1 => -17.4426236,
                    ),
                    10 => 
                    array (
                    0 => -66.1474809,
                    1 => -17.443033,
                    ),
                    11 => 
                    array (
                    0 => -66.1455926,
                    1 => -17.4428693,
                    ),
                    12 => 
                    array (
                    0 => -66.143876,
                    1 => -17.4412316,
                    ),
                    13 => 
                    array (
                    0 => -66.1463651,
                    1 => -17.4379562,
                    ),
                    14 => 
                    array (
                    0 => -66.148425,
                    1 => -17.434435,
                    ),
                    15 => 
                    array (
                    0 => -66.1497125,
                    1 => -17.4331248,
                    ),
                    16 => 
                    array (
                    0 => -66.1507424,
                    1 => -17.4314052,
                    ),
                    17 => 
                    array (
                    0 => -66.1517724,
                    1 => -17.4296036,
                    ),
                    18 => 
                    array (
                    0 => -66.1527047,
                    1 => -17.4289965,
                    ),
                    19 => 
                    array (
                    0 => -66.1623177,
                    1 => -17.4298972,
                    ),
                ),
                ),
            ),
            ),
            15 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'DOÑA PANCHITA GALINDO',
                'description' => NULL,
            ),
            'geometry' => 
            array (
                'type' => 'Point',
                'coordinates' => 
                array (
                0 => -66.1971895,
                1 => -17.392388,
                ),
            ),
            ),
            16 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '10 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1366685,
                    1 => -17.3693408,
                    ),
                    1 => 
                    array (
                    0 => -66.1399315,
                    1 => -17.3677331,
                    ),
                    2 => 
                    array (
                    0 => -66.1440067,
                    1 => -17.3654837,
                    ),
                    3 => 
                    array (
                    0 => -66.1475668,
                    1 => -17.3620054,
                    ),
                    4 => 
                    array (
                    0 => -66.1482963,
                    1 => -17.3647087,
                    ),
                    5 => 
                    array (
                    0 => -66.1496105,
                    1 => -17.3670267,
                    ),
                    6 => 
                    array (
                    0 => -66.1432323,
                    1 => -17.3695419,
                    ),
                    7 => 
                    array (
                    0 => -66.140448,
                    1 => -17.3712863,
                    ),
                    8 => 
                    array (
                    0 => -66.1382325,
                    1 => -17.371829,
                    ),
                    9 => 
                    array (
                    0 => -66.1368753,
                    1 => -17.3726789,
                    ),
                    10 => 
                    array (
                    0 => -66.136811,
                    1 => -17.3748393,
                    ),
                    11 => 
                    array (
                    0 => -66.1342192,
                    1 => -17.3734058,
                    ),
                    12 => 
                    array (
                    0 => -66.1327647,
                    1 => -17.3734673,
                    ),
                    13 => 
                    array (
                    0 => -66.1320451,
                    1 => -17.3738206,
                    ),
                    14 => 
                    array (
                    0 => -66.1309822,
                    1 => -17.3752387,
                    ),
                    15 => 
                    array (
                    0 => -66.1302205,
                    1 => -17.3766415,
                    ),
                    16 => 
                    array (
                    0 => -66.1295875,
                    1 => -17.3780648,
                    ),
                    17 => 
                    array (
                    0 => -66.1286219,
                    1 => -17.3795392,
                    ),
                    18 => 
                    array (
                    0 => -66.1261864,
                    1 => -17.3804914,
                    ),
                    19 => 
                    array (
                    0 => -66.1211332,
                    1 => -17.3799078,
                    ),
                    20 => 
                    array (
                    0 => -66.1162408,
                    1 => -17.3784334,
                    ),
                    21 => 
                    array (
                    0 => -66.1138375,
                    1 => -17.3764265,
                    ),
                    22 => 
                    array (
                    0 => -66.1122497,
                    1 => -17.3742147,
                    ),
                    23 => 
                    array (
                    0 => -66.1110051,
                    1 => -17.3729247,
                    ),
                    24 => 
                    array (
                    0 => -66.1132367,
                    1 => -17.3719211,
                    ),
                    25 => 
                    array (
                    0 => -66.1165841,
                    1 => -17.372126,
                    ),
                    26 => 
                    array (
                    0 => -66.1231072,
                    1 => -17.3722898,
                    ),
                    27 => 
                    array (
                    0 => -66.1267122,
                    1 => -17.3719622,
                    ),
                    28 => 
                    array (
                    0 => -66.1291155,
                    1 => -17.3713068,
                    ),
                    29 => 
                    array (
                    0 => -66.1315186,
                    1 => -17.3708154,
                    ),
                    30 => 
                    array (
                    0 => -66.1336644,
                    1 => -17.3704058,
                    ),
                    31 => 
                    array (
                    0 => -66.1366685,
                    1 => -17.3693408,
                    ),
                ),
                ),
            ),
            ),
            17 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1815128,
                    1 => -17.3480885,
                    ),
                    1 => 
                    array (
                    0 => -66.1804828,
                    1 => -17.3484162,
                    ),
                    2 => 
                    array (
                    0 => -66.17811,
                    1 => -17.3493862,
                    ),
                    3 => 
                    array (
                    0 => -66.1754188,
                    1 => -17.3513655,
                    ),
                    4 => 
                    array (
                    0 => -66.1713848,
                    1 => -17.354069,
                    ),
                    5 => 
                    array (
                    0 => -66.1670932,
                    1 => -17.3561889,
                    ),
                    6 => 
                    array (
                    0 => -66.1617164,
                    1 => -17.3516801,
                    ),
                    7 => 
                    array (
                    0 => -66.1632613,
                    1 => -17.350615,
                    ),
                    8 => 
                    array (
                    0 => -66.1645059,
                    1 => -17.3500006,
                    ),
                    9 => 
                    array (
                    0 => -66.1658362,
                    1 => -17.3497139,
                    ),
                    10 => 
                    array (
                    0 => -66.1678103,
                    1 => -17.3486897,
                    ),
                    11 => 
                    array (
                    0 => -66.1699132,
                    1 => -17.3479525,
                    ),
                    12 => 
                    array (
                    0 => -66.1718873,
                    1 => -17.3468054,
                    ),
                    13 => 
                    array (
                    0 => -66.1732177,
                    1 => -17.3458633,
                    ),
                    14 => 
                    array (
                    0 => -66.1750201,
                    1 => -17.3446344,
                    ),
                    15 => 
                    array (
                    0 => -66.1769084,
                    1 => -17.3432416,
                    ),
                    16 => 
                    array (
                    0 => -66.1789102,
                    1 => -17.3425928,
                    ),
                    17 => 
                    array (
                    0 => -66.1796764,
                    1 => -17.3442248,
                    ),
                    18 => 
                    array (
                    0 => -66.1802557,
                    1 => -17.3456586,
                    ),
                    19 => 
                    array (
                    0 => -66.1815128,
                    1 => -17.3480885,
                    ),
                ),
                ),
            ),
            ),
            18 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1670932,
                    1 => -17.3561889,
                    ),
                    1 => 
                    array (
                    0 => -66.162673,
                    1 => -17.3581142,
                    ),
                    2 => 
                    array (
                    0 => -66.1575231,
                    1 => -17.3597321,
                    ),
                    3 => 
                    array (
                    0 => -66.1536177,
                    1 => -17.3607766,
                    ),
                    4 => 
                    array (
                    0 => -66.1513433,
                    1 => -17.3612271,
                    ),
                    5 => 
                    array (
                    0 => -66.1475668,
                    1 => -17.3620054,
                    ),
                    6 => 
                    array (
                    0 => -66.1462793,
                    1 => -17.3588924,
                    ),
                    7 => 
                    array (
                    0 => -66.1490417,
                    1 => -17.3572787,
                    ),
                    8 => 
                    array (
                    0 => -66.1505008,
                    1 => -17.3567872,
                    ),
                    9 => 
                    array (
                    0 => -66.1525608,
                    1 => -17.3561318,
                    ),
                    10 => 
                    array (
                    0 => -66.1547924,
                    1 => -17.3555584,
                    ),
                    11 => 
                    array (
                    0 => -66.1571098,
                    1 => -17.3544934,
                    ),
                    12 => 
                    array (
                    0 => -66.1589981,
                    1 => -17.3533464,
                    ),
                    13 => 
                    array (
                    0 => -66.1617164,
                    1 => -17.3516801,
                    ),
                    14 => 
                    array (
                    0 => -66.1670932,
                    1 => -17.3561889,
                    ),
                ),
                ),
            ),
            ),
            19 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1461507,
                    1 => -17.3587285,
                    ),
                    1 => 
                    array (
                    0 => -66.1474382,
                    1 => -17.3618415,
                    ),
                    2 => 
                    array (
                    0 => -66.1438781,
                    1 => -17.3653198,
                    ),
                    3 => 
                    array (
                    0 => -66.1431376,
                    1 => -17.3657165,
                    ),
                    4 => 
                    array (
                    0 => -66.1421612,
                    1 => -17.3662694,
                    ),
                    5 => 
                    array (
                    0 => -66.1396077,
                    1 => -17.3676518,
                    ),
                    6 => 
                    array (
                    0 => -66.1364535,
                    1 => -17.3692083,
                    ),
                    7 => 
                    array (
                    0 => -66.1335358,
                    1 => -17.3702419,
                    ),
                    8 => 
                    array (
                    0 => -66.1325374,
                    1 => -17.3704267,
                    ),
                    9 => 
                    array (
                    0 => -66.1289869,
                    1 => -17.3711429,
                    ),
                    10 => 
                    array (
                    0 => -66.1265836,
                    1 => -17.3717983,
                    ),
                    11 => 
                    array (
                    0 => -66.1229786,
                    1 => -17.3721259,
                    ),
                    12 => 
                    array (
                    0 => -66.1174313,
                    1 => -17.3719422,
                    ),
                    13 => 
                    array (
                    0 => -66.1131081,
                    1 => -17.3717572,
                    ),
                    14 => 
                    array (
                    0 => -66.1108765,
                    1 => -17.3727608,
                    ),
                    15 => 
                    array (
                    0 => -66.1094919,
                    1 => -17.3678463,
                    ),
                    16 => 
                    array (
                    0 => -66.1166158,
                    1 => -17.3658803,
                    ),
                    17 => 
                    array (
                    0 => -66.1215082,
                    1 => -17.3646515,
                    ),
                    18 => 
                    array (
                    0 => -66.1242548,
                    1 => -17.3644058,
                    ),
                    19 => 
                    array (
                    0 => -66.1280313,
                    1 => -17.3659622,
                    ),
                    20 => 
                    array (
                    0 => -66.1324087,
                    1 => -17.3644058,
                    ),
                    21 => 
                    array (
                    0 => -66.139361,
                    1 => -17.3620301,
                    ),
                    22 => 
                    array (
                    0 => -66.1430517,
                    1 => -17.3599002,
                    ),
                    23 => 
                    array (
                    0 => -66.1461507,
                    1 => -17.3587285,
                    ),
                ),
                ),
            ),
            ),
            20 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '12 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'MultiPolygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => 
                    array (
                        0 => -66.1030932,
                        1 => -17.3820002,
                    ),
                    1 => 
                    array (
                        0 => -66.0991182,
                        1 => -17.3826094,
                    ),
                    2 => 
                    array (
                        0 => -66.1071566,
                        1 => -17.3812014,
                    ),
                    3 => 
                    array (
                        0 => -66.1030932,
                        1 => -17.3820002,
                    ),
                    ),
                ),
                1 => 
                array (
                    0 => 
                    array (
                    0 => 
                    array (
                        0 => -66.1000891,
                        1 => -17.3943684,
                    ),
                    1 => 
                    array (
                        0 => -66.1025353,
                        1 => -17.3937541,
                    ),
                    2 => 
                    array (
                        0 => -66.1038237,
                        1 => -17.393535,
                    ),
                    3 => 
                    array (
                        0 => -66.1000891,
                        1 => -17.3943684,
                    ),
                    ),
                ),
                2 => 
                array (
                    0 => 
                    array (
                    0 => 
                    array (
                        0 => -66.1038237,
                        1 => -17.393535,
                    ),
                    1 => 
                    array (
                        0 => -66.1113973,
                        1 => -17.3918447,
                    ),
                    2 => 
                    array (
                        0 => -66.1107642,
                        1 => -17.3889164,
                    ),
                    3 => 
                    array (
                        0 => -66.1103138,
                        1 => -17.3865822,
                    ),
                    4 => 
                    array (
                        0 => -66.1095359,
                        1 => -17.3835975,
                    ),
                    5 => 
                    array (
                        0 => -66.1087044,
                        1 => -17.3809302,
                    ),
                    6 => 
                    array (
                        0 => -66.1071566,
                        1 => -17.3812014,
                    ),
                    7 => 
                    array (
                        0 => -66.1073634,
                        1 => -17.3811607,
                    ),
                    8 => 
                    array (
                        0 => -66.1100455,
                        1 => -17.3805054,
                    ),
                    9 => 
                    array (
                        0 => -66.1131355,
                        1 => -17.3798296,
                    ),
                    10 => 
                    array (
                        0 => -66.1145302,
                        1 => -17.3792767,
                    ),
                    11 => 
                    array (
                        0 => -66.1162408,
                        1 => -17.3784334,
                    ),
                    12 => 
                    array (
                        0 => -66.118693,
                        1 => -17.3791948,
                    ),
                    13 => 
                    array (
                        0 => -66.1213323,
                        1 => -17.3799729,
                    ),
                    14 => 
                    array (
                        0 => -66.1221906,
                        1 => -17.3800344,
                    ),
                    15 => 
                    array (
                        0 => -66.1227056,
                        1 => -17.3800856,
                    ),
                    16 => 
                    array (
                        0 => -66.1227056,
                        1 => -17.3805258,
                    ),
                    17 => 
                    array (
                        0 => -66.1227485,
                        1 => -17.3830651,
                    ),
                    18 => 
                    array (
                        0 => -66.1209032,
                        1 => -17.3851948,
                    ),
                    19 => 
                    array (
                        0 => -66.1205169,
                        1 => -17.3880616,
                    ),
                    20 => 
                    array (
                        0 => -66.1193582,
                        1 => -17.3890445,
                    ),
                    21 => 
                    array (
                        0 => -66.1170408,
                        1 => -17.3902731,
                    ),
                    22 => 
                    array (
                        0 => -66.1145516,
                        1 => -17.3913379,
                    ),
                    23 => 
                    array (
                        0 => -66.1104317,
                        1 => -17.3923617,
                    ),
                    24 => 
                    array (
                        0 => -66.1068698,
                        1 => -17.393017,
                    ),
                    25 => 
                    array (
                        0 => -66.1038237,
                        1 => -17.393535,
                    ),
                    ),
                ),
                ),
            ),
            ),
            21 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1087044,
                    1 => -17.3809302,
                    ),
                    1 => 
                    array (
                    0 => -66.1095359,
                    1 => -17.3835975,
                    ),
                    2 => 
                    array (
                    0 => -66.1103138,
                    1 => -17.3865822,
                    ),
                    3 => 
                    array (
                    0 => -66.1113973,
                    1 => -17.3918447,
                    ),
                    4 => 
                    array (
                    0 => -66.1103458,
                    1 => -17.392116,
                    ),
                    5 => 
                    array (
                    0 => -66.1101528,
                    1 => -17.392111,
                    ),
                    6 => 
                    array (
                    0 => -66.1099865,
                    1 => -17.3921058,
                    ),
                    7 => 
                    array (
                    0 => -66.1097236,
                    1 => -17.3921724,
                    ),
                    8 => 
                    array (
                    0 => -66.1084963,
                    1 => -17.3924741,
                    ),
                    9 => 
                    array (
                    0 => -66.1069664,
                    1 => -17.3928122,
                    ),
                    10 => 
                    array (
                    0 => -66.1047241,
                    1 => -17.3931808,
                    ),
                    11 => 
                    array (
                    0 => -66.1025353,
                    1 => -17.3937541,
                    ),
                    12 => 
                    array (
                    0 => -66.1000891,
                    1 => -17.3943684,
                    ),
                    13 => 
                    array (
                    0 => -66.0972568,
                    1 => -17.3946141,
                    ),
                    14 => 
                    array (
                    0 => -66.096656,
                    1 => -17.3910922,
                    ),
                    15 => 
                    array (
                    0 => -66.0954114,
                    1 => -17.3831061,
                    ),
                    16 => 
                    array (
                    0 => -66.0985014,
                    1 => -17.3826966,
                    ),
                    17 => 
                    array (
                    0 => -66.1087044,
                    1 => -17.3809302,
                    ),
                ),
                ),
            ),
            ),
            22 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SACABA',
                'description' => '18 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0953255,
                    1 => -17.3831061,
                    ),
                    1 => 
                    array (
                    0 => -66.0963984,
                    1 => -17.3899864,
                    ),
                    2 => 
                    array (
                    0 => -66.0972568,
                    1 => -17.3946141,
                    ),
                    3 => 
                    array (
                    0 => -66.0931477,
                    1 => -17.395208,
                    ),
                    4 => 
                    array (
                    0 => -66.0909053,
                    1 => -17.3949827,
                    ),
                    5 => 
                    array (
                    0 => -66.0891458,
                    1 => -17.3942456,
                    ),
                    6 => 
                    array (
                    0 => -66.0820218,
                    1 => -17.3944913,
                    ),
                    7 => 
                    array (
                    0 => -66.0824577,
                    1 => -17.39314,
                    ),
                    8 => 
                    array (
                    0 => -66.0820714,
                    1 => -17.3893723,
                    ),
                    9 => 
                    array (
                    0 => -66.081814,
                    1 => -17.3880208,
                    ),
                    10 => 
                    array (
                    0 => -66.0816852,
                    1 => -17.3870379,
                    ),
                    11 => 
                    array (
                    0 => -66.0816852,
                    1 => -17.3864646,
                    ),
                    12 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                    13 => 
                    array (
                    0 => -66.0844251,
                    1 => -17.3842528,
                    ),
                    14 => 
                    array (
                    0 => -66.085762,
                    1 => -17.3841302,
                    ),
                    15 => 
                    array (
                    0 => -66.0867491,
                    1 => -17.3840483,
                    ),
                    16 => 
                    array (
                    0 => -66.0893669,
                    1 => -17.3837206,
                    ),
                    17 => 
                    array (
                    0 => -66.0911693,
                    1 => -17.3835158,
                    ),
                    18 => 
                    array (
                    0 => -66.0953255,
                    1 => -17.3831061,
                    ),
                ),
                ),
            ),
            ),
            23 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1162408,
                    1 => -17.3784334,
                    ),
                    1 => 
                    array (
                    0 => -66.1145302,
                    1 => -17.3792767,
                    ),
                    2 => 
                    array (
                    0 => -66.1131355,
                    1 => -17.3798296,
                    ),
                    3 => 
                    array (
                    0 => -66.1120239,
                    1 => -17.3800384,
                    ),
                    4 => 
                    array (
                    0 => -66.1072173,
                    1 => -17.3812057,
                    ),
                    5 => 
                    array (
                    0 => -66.1029109,
                    1 => -17.3820105,
                    ),
                    6 => 
                    array (
                    0 => -66.0977181,
                    1 => -17.3828142,
                    ),
                    7 => 
                    array (
                    0 => -66.0975882,
                    1 => -17.3816767,
                    ),
                    8 => 
                    array (
                    0 => -66.0972556,
                    1 => -17.3793985,
                    ),
                    9 => 
                    array (
                    0 => -66.0972663,
                    1 => -17.3787279,
                    ),
                    10 => 
                    array (
                    0 => -66.0962364,
                    1 => -17.3763831,
                    ),
                    11 => 
                    array (
                    0 => -66.0961318,
                    1 => -17.3760349,
                    ),
                    12 => 
                    array (
                    0 => -66.0959735,
                    1 => -17.3748267,
                    ),
                    13 => 
                    array (
                    0 => -66.0997501,
                    1 => -17.3740895,
                    ),
                    14 => 
                    array (
                    0 => -66.1027542,
                    1 => -17.3733522,
                    ),
                    15 => 
                    array (
                    0 => -66.106874,
                    1 => -17.3719597,
                    ),
                    16 => 
                    array (
                    0 => -66.1105755,
                    1 => -17.3713658,
                    ),
                    17 => 
                    array (
                    0 => -66.1110051,
                    1 => -17.3729247,
                    ),
                    18 => 
                    array (
                    0 => -66.1122497,
                    1 => -17.3742147,
                    ),
                    19 => 
                    array (
                    0 => -66.1138375,
                    1 => -17.3764265,
                    ),
                    20 => 
                    array (
                    0 => -66.1162408,
                    1 => -17.3784334,
                    ),
                ),
                ),
            ),
            ),
            24 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0959735,
                    1 => -17.3748267,
                    ),
                    1 => 
                    array (
                    0 => -66.0961318,
                    1 => -17.3760349,
                    ),
                    2 => 
                    array (
                    0 => -66.0962009,
                    1 => -17.3763165,
                    ),
                    3 => 
                    array (
                    0 => -66.0965059,
                    1 => -17.3770179,
                    ),
                    4 => 
                    array (
                    0 => -66.0972663,
                    1 => -17.3787279,
                    ),
                    5 => 
                    array (
                    0 => -66.0972508,
                    1 => -17.3794733,
                    ),
                    6 => 
                    array (
                    0 => -66.0974952,
                    1 => -17.3811463,
                    ),
                    7 => 
                    array (
                    0 => -66.0977181,
                    1 => -17.3828142,
                    ),
                    8 => 
                    array (
                    0 => -66.0844251,
                    1 => -17.3842528,
                    ),
                    9 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                    10 => 
                    array (
                    0 => -66.0803671,
                    1 => -17.3817158,
                    ),
                    11 => 
                    array (
                    0 => -66.0794229,
                    1 => -17.379668,
                    ),
                    12 => 
                    array (
                    0 => -66.0788221,
                    1 => -17.3772106,
                    ),
                    13 => 
                    array (
                    0 => -66.0802812,
                    1 => -17.3766372,
                    ),
                    14 => 
                    array (
                    0 => -66.0850019,
                    1 => -17.3758181,
                    ),
                    15 => 
                    array (
                    0 => -66.0894651,
                    1 => -17.3754085,
                    ),
                    16 => 
                    array (
                    0 => -66.0959735,
                    1 => -17.3748267,
                    ),
                ),
                ),
            ),
            ),
            25 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '12 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1447742,
                    1 => -17.4061286,
                    ),
                    1 => 
                    array (
                    0 => -66.1471375,
                    1 => -17.4077583,
                    ),
                    2 => 
                    array (
                    0 => -66.1464401,
                    1 => -17.4091352,
                    ),
                    3 => 
                    array (
                    0 => -66.1467405,
                    1 => -17.412575,
                    ),
                    4 => 
                    array (
                    0 => -66.1475317,
                    1 => -17.4128036,
                    ),
                    5 => 
                    array (
                    0 => -66.1483471,
                    1 => -17.41308,
                    ),
                    6 => 
                    array (
                    0 => -66.148862,
                    1 => -17.4135407,
                    ),
                    7 => 
                    array (
                    0 => -66.1504071,
                    1 => -17.4152401,
                    ),
                    8 => 
                    array (
                    0 => -66.1518903,
                    1 => -17.4177754,
                    ),
                    9 => 
                    array (
                    0 => -66.1520807,
                    1 => -17.4184545,
                    ),
                    10 => 
                    array (
                    0 => -66.1493449,
                    1 => -17.4196419,
                    ),
                    11 => 
                    array (
                    0 => -66.148846,
                    1 => -17.4193962,
                    ),
                    12 => 
                    array (
                    0 => -66.1445813,
                    1 => -17.4197135,
                    ),
                    13 => 
                    array (
                    0 => -66.139764,
                    1 => -17.4199183,
                    ),
                    14 => 
                    array (
                    0 => -66.1406652,
                    1 => -17.4164889,
                    ),
                    15 => 
                    array (
                    0 => -66.1421244,
                    1 => -17.4144415,
                    ),
                    16 => 
                    array (
                    0 => -66.1423819,
                    1 => -17.4118208,
                    ),
                    17 => 
                    array (
                    0 => -66.1427252,
                    1 => -17.409282,
                    ),
                    18 => 
                    array (
                    0 => -66.1447742,
                    1 => -17.4061286,
                    ),
                ),
                ),
            ),
            ),
            26 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1406652,
                    1 => -17.4164889,
                    ),
                    1 => 
                    array (
                    0 => -66.139764,
                    1 => -17.4199183,
                    ),
                    2 => 
                    array (
                    0 => -66.1345419,
                    1 => -17.4236689,
                    ),
                    3 => 
                    array (
                    0 => -66.1300787,
                    1 => -17.4275997,
                    ),
                    4 => 
                    array (
                    0 => -66.1279329,
                    1 => -17.4307115,
                    ),
                    5 => 
                    array (
                    0 => -66.1229548,
                    1 => -17.4305477,
                    ),
                    6 => 
                    array (
                    0 => -66.1193499,
                    1 => -17.4293194,
                    ),
                    7 => 
                    array (
                    0 => -66.1178049,
                    1 => -17.4262075,
                    ),
                    8 => 
                    array (
                    0 => -66.1188349,
                    1 => -17.4229318,
                    ),
                    9 => 
                    array (
                    0 => -66.1205515,
                    1 => -17.4206388,
                    ),
                    10 => 
                    array (
                    0 => -66.1227831,
                    1 => -17.4175268,
                    ),
                    11 => 
                    array (
                    0 => -66.1257872,
                    1 => -17.4154794,
                    ),
                    12 => 
                    array (
                    0 => -66.126624,
                    1 => -17.4167078,
                    ),
                    13 => 
                    array (
                    0 => -66.1279329,
                    1 => -17.4172811,
                    ),
                    14 => 
                    array (
                    0 => -66.1312803,
                    1 => -17.4178544,
                    ),
                    15 => 
                    array (
                    0 => -66.1331686,
                    1 => -17.4188371,
                    ),
                    16 => 
                    array (
                    0 => -66.1347136,
                    1 => -17.4191033,
                    ),
                    17 => 
                    array (
                    0 => -66.1361727,
                    1 => -17.4182639,
                    ),
                    18 => 
                    array (
                    0 => -66.1384043,
                    1 => -17.4170354,
                    ),
                    19 => 
                    array (
                    0 => -66.1406652,
                    1 => -17.4164889,
                    ),
                ),
                ),
            ),
            ),
            27 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '18 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1652479,
                    1 => -17.4384475,
                    ),
                    1 => 
                    array (
                    0 => -66.1698051,
                    1 => -17.4543759,
                    ),
                    2 => 
                    array (
                    0 => -66.1568447,
                    1 => -17.4572416,
                    ),
                    3 => 
                    array (
                    0 => -66.1528535,
                    1 => -17.4566275,
                    ),
                    4 => 
                    array (
                    0 => -66.1480041,
                    1 => -17.4557474,
                    ),
                    5 => 
                    array (
                    0 => -66.1437555,
                    1 => -17.4544168,
                    ),
                    6 => 
                    array (
                    0 => -66.1414596,
                    1 => -17.4511212,
                    ),
                    7 => 
                    array (
                    0 => -66.1398502,
                    1 => -17.4450312,
                    ),
                    8 => 
                    array (
                    0 => -66.141481,
                    1 => -17.4438133,
                    ),
                    9 => 
                    array (
                    0 => -66.143876,
                    1 => -17.4412316,
                    ),
                    10 => 
                    array (
                    0 => -66.1455926,
                    1 => -17.4428693,
                    ),
                    11 => 
                    array (
                    0 => -66.147001,
                    1 => -17.44302,
                    ),
                    12 => 
                    array (
                    0 => -66.147524,
                    1 => -17.4430507,
                    ),
                    13 => 
                    array (
                    0 => -66.1489805,
                    1 => -17.442631,
                    ),
                    14 => 
                    array (
                    0 => -66.1522755,
                    1 => -17.4422845,
                    ),
                    15 => 
                    array (
                    0 => -66.1554632,
                    1 => -17.4417229,
                    ),
                    16 => 
                    array (
                    0 => -66.1577377,
                    1 => -17.4412214,
                    ),
                    17 => 
                    array (
                    0 => -66.1599264,
                    1 => -17.4403309,
                    ),
                    18 => 
                    array (
                    0 => -66.1625657,
                    1 => -17.4395837,
                    ),
                    19 => 
                    array (
                    0 => -66.1652479,
                    1 => -17.4384475,
                    ),
                ),
                ),
            ),
            ),
            28 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'CENTRO',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1279329,
                    1 => -17.4307115,
                    ),
                    1 => 
                    array (
                    0 => -66.1248841,
                    1 => -17.4357237,
                    ),
                    2 => 
                    array (
                    0 => -66.125914,
                    1 => -17.4388354,
                    ),
                    3 => 
                    array (
                    0 => -66.1247982,
                    1 => -17.4401455,
                    ),
                    4 => 
                    array (
                    0 => -66.1260428,
                    1 => -17.4398896,
                    ),
                    5 => 
                    array (
                    0 => -66.1273302,
                    1 => -17.4400432,
                    ),
                    6 => 
                    array (
                    0 => -66.1298623,
                    1 => -17.4417014,
                    ),
                    7 => 
                    array (
                    0 => -66.1312356,
                    1 => -17.443032,
                    ),
                    8 => 
                    array (
                    0 => -66.1315789,
                    1 => -17.4432469,
                    ),
                    9 => 
                    array (
                    0 => -66.132759,
                    1 => -17.4429655,
                    ),
                    10 => 
                    array (
                    0 => -66.1341538,
                    1 => -17.4429706,
                    ),
                    11 => 
                    array (
                    0 => -66.137072,
                    1 => -17.4431753,
                    ),
                    12 => 
                    array (
                    0 => -66.1388208,
                    1 => -17.442899,
                    ),
                    13 => 
                    array (
                    0 => -66.1410632,
                    1 => -17.4431344,
                    ),
                    14 => 
                    array (
                    0 => -66.1395182,
                    1 => -17.4443626,
                    ),
                    15 => 
                    array (
                    0 => -66.1375012,
                    1 => -17.4454475,
                    ),
                    16 => 
                    array (
                    0 => -66.1334457,
                    1 => -17.4476788,
                    ),
                    17 => 
                    array (
                    0 => -66.1308922,
                    1 => -17.4496235,
                    ),
                    18 => 
                    array (
                    0 => -66.1286606,
                    1 => -17.4522641,
                    ),
                    19 => 
                    array (
                    0 => -66.1251416,
                    1 => -17.4513635,
                    ),
                    20 => 
                    array (
                    0 => -66.1243584,
                    1 => -17.4511537,
                    ),
                    21 => 
                    array (
                    0 => -66.1232747,
                    1 => -17.4506163,
                    ),
                    22 => 
                    array (
                    0 => -66.1209251,
                    1 => -17.4494085,
                    ),
                    23 => 
                    array (
                    0 => -66.1190906,
                    1 => -17.4484567,
                    ),
                    24 => 
                    array (
                    0 => -66.1166229,
                    1 => -17.4471261,
                    ),
                    25 => 
                    array (
                    0 => -66.1121811,
                    1 => -17.4448948,
                    ),
                    26 => 
                    array (
                    0 => -66.1132969,
                    1 => -17.4384259,
                    ),
                    27 => 
                    array (
                    0 => -66.1143269,
                    1 => -17.4322025,
                    ),
                    28 => 
                    array (
                    0 => -66.1163868,
                    1 => -17.4269616,
                    ),
                    29 => 
                    array (
                    0 => -66.1178049,
                    1 => -17.4262075,
                    ),
                    30 => 
                    array (
                    0 => -66.1193499,
                    1 => -17.4293194,
                    ),
                    31 => 
                    array (
                    0 => -66.1229548,
                    1 => -17.4305477,
                    ),
                    32 => 
                    array (
                    0 => -66.1279329,
                    1 => -17.4307115,
                    ),
                ),
                ),
            ),
            ),
            29 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1203881,
                    1 => -17.3879797,
                    ),
                    1 => 
                    array (
                    0 => -66.1195041,
                    1 => -17.3928632,
                    ),
                    2 => 
                    array (
                    0 => -66.1198474,
                    1 => -17.3985146,
                    ),
                    3 => 
                    array (
                    0 => -66.1172296,
                    1 => -17.4013812,
                    ),
                    4 => 
                    array (
                    0 => -66.1146546,
                    1 => -17.4014631,
                    ),
                    5 => 
                    array (
                    0 => -66.1116077,
                    1 => -17.4018112,
                    ),
                    6 => 
                    array (
                    0 => -66.1074449,
                    1 => -17.4026507,
                    ),
                    7 => 
                    array (
                    0 => -66.103797,
                    1 => -17.4033878,
                    ),
                    8 => 
                    array (
                    0 => -66.1009218,
                    1 => -17.4036744,
                    ),
                    9 => 
                    array (
                    0 => -66.0989476,
                    1 => -17.4036745,
                    ),
                    10 => 
                    array (
                    0 => -66.0955806,
                    1 => -17.4037362,
                    ),
                    11 => 
                    array (
                    0 => -66.0964097,
                    1 => -17.4005623,
                    ),
                    12 => 
                    array (
                    0 => -66.0973909,
                    1 => -17.3968768,
                    ),
                    13 => 
                    array (
                    0 => -66.0972837,
                    1 => -17.3958121,
                    ),
                    14 => 
                    array (
                    0 => -66.0972568,
                    1 => -17.3946141,
                    ),
                    15 => 
                    array (
                    0 => -66.1000891,
                    1 => -17.3943684,
                    ),
                    16 => 
                    array (
                    0 => -66.1026813,
                    1 => -17.3936822,
                    ),
                    17 => 
                    array (
                    0 => -66.1086894,
                    1 => -17.3926174,
                    ),
                    18 => 
                    array (
                    0 => -66.1140538,
                    1 => -17.3913479,
                    ),
                    19 => 
                    array (
                    0 => -66.1181737,
                    1 => -17.3897097,
                    ),
                    20 => 
                    array (
                    0 => -66.1203881,
                    1 => -17.3879797,
                    ),
                ),
                ),
            ),
            ),
            30 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                    1 => 
                    array (
                    0 => -66.0758056,
                    1 => -17.3865874,
                    ),
                    2 => 
                    array (
                    0 => -66.0735632,
                    1 => -17.3852974,
                    ),
                    3 => 
                    array (
                    0 => -66.0709776,
                    1 => -17.3847445,
                    ),
                    4 => 
                    array (
                    0 => -66.0672654,
                    1 => -17.3849492,
                    ),
                    5 => 
                    array (
                    0 => -66.0640468,
                    1 => -17.3847854,
                    ),
                    6 => 
                    array (
                    0 => -66.0604159,
                    1 => -17.3848351,
                    ),
                    7 => 
                    array (
                    0 => -66.06239,
                    1 => -17.3824597,
                    ),
                    8 => 
                    array (
                    0 => -66.0652224,
                    1 => -17.3777088,
                    ),
                    9 => 
                    array (
                    0 => -66.0707156,
                    1 => -17.3782003,
                    ),
                    10 => 
                    array (
                    0 => -66.0788221,
                    1 => -17.3772106,
                    ),
                    11 => 
                    array (
                    0 => -66.0794229,
                    1 => -17.379668,
                    ),
                    12 => 
                    array (
                    0 => -66.0803671,
                    1 => -17.3817158,
                    ),
                    13 => 
                    array (
                    0 => -66.0813586,
                    1 => -17.3852447,
                    ),
                    14 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                ),
                ),
            ),
            ),
            31 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0626735,
                    1 => -17.3943276,
                    ),
                    1 => 
                    array (
                    0 => -66.0606841,
                    1 => -17.3950065,
                    ),
                    2 => 
                    array (
                    0 => -66.0588387,
                    1 => -17.3953751,
                    ),
                    3 => 
                    array (
                    0 => -66.0574225,
                    1 => -17.3964398,
                    ),
                    4 => 
                    array (
                    0 => -66.0559205,
                    1 => -17.3974227,
                    ),
                    5 => 
                    array (
                    0 => -66.054912,
                    1 => -17.3979346,
                    ),
                    6 => 
                    array (
                    0 => -66.0542468,
                    1 => -17.3966855,
                    ),
                    7 => 
                    array (
                    0 => -66.0536675,
                    1 => -17.395457,
                    ),
                    8 => 
                    array (
                    0 => -66.0531954,
                    1 => -17.3945356,
                    ),
                    9 => 
                    array (
                    0 => -66.0527018,
                    1 => -17.3934912,
                    ),
                    10 => 
                    array (
                    0 => -66.0524014,
                    1 => -17.3929998,
                    ),
                    11 => 
                    array (
                    0 => -66.052101,
                    1 => -17.3924265,
                    ),
                    12 => 
                    array (
                    0 => -66.0514144,
                    1 => -17.3909112,
                    ),
                    13 => 
                    array (
                    0 => -66.0507706,
                    1 => -17.389314,
                    ),
                    14 => 
                    array (
                    0 => -66.0500411,
                    1 => -17.3880444,
                    ),
                    15 => 
                    array (
                    0 => -66.0494403,
                    1 => -17.3863653,
                    ),
                    16 => 
                    array (
                    0 => -66.0510281,
                    1 => -17.3858738,
                    ),
                    17 => 
                    array (
                    0 => -66.0527448,
                    1 => -17.385751,
                    ),
                    18 => 
                    array (
                    0 => -66.0539035,
                    1 => -17.3850547,
                    ),
                    19 => 
                    array (
                    0 => -66.0554913,
                    1 => -17.3850547,
                    ),
                    20 => 
                    array (
                    0 => -66.0598687,
                    1 => -17.3845223,
                    ),
                    21 => 
                    array (
                    0 => -66.0604159,
                    1 => -17.3848351,
                    ),
                    22 => 
                    array (
                    0 => -66.0677232,
                    1 => -17.384993,
                    ),
                    23 => 
                    array (
                    0 => -66.0687093,
                    1 => -17.389314,
                    ),
                    24 => 
                    array (
                    0 => -66.0694397,
                    1 => -17.3921191,
                    ),
                    25 => 
                    array (
                    0 => -66.069269,
                    1 => -17.3939972,
                    ),
                    26 => 
                    array (
                    0 => -66.0679064,
                    1 => -17.3938949,
                    ),
                    27 => 
                    array (
                    0 => -66.0626735,
                    1 => -17.3943276,
                    ),
                ),
                ),
            ),
            ),
            32 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SACABA',
                'description' => '30 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0292036,
                    1 => -17.4088704,
                    ),
                    1 => 
                    array (
                    0 => -66.0264999,
                    1 => -17.4035059,
                    ),
                    2 => 
                    array (
                    0 => -66.0283024,
                    1 => -17.398776,
                    ),
                    3 => 
                    array (
                    0 => -66.0313535,
                    1 => -17.3946378,
                    ),
                    4 => 
                    array (
                    0 => -66.0333792,
                    1 => -17.3941065,
                    ),
                    5 => 
                    array (
                    0 => -66.0361344,
                    1 => -17.393698,
                    ),
                    6 => 
                    array (
                    0 => -66.0386491,
                    1 => -17.3935321,
                    ),
                    7 => 
                    array (
                    0 => -66.0417819,
                    1 => -17.3946378,
                    ),
                    8 => 
                    array (
                    0 => -66.0472751,
                    1 => -17.3929587,
                    ),
                    9 => 
                    array (
                    0 => -66.0509658,
                    1 => -17.390092,
                    ),
                    10 => 
                    array (
                    0 => -66.0544592,
                    1 => -17.3972609,
                    ),
                    11 => 
                    array (
                    0 => -66.0552639,
                    1 => -17.3984792,
                    ),
                    12 => 
                    array (
                    0 => -66.057061,
                    1 => -17.4011461,
                    ),
                    13 => 
                    array (
                    0 => -66.0554249,
                    1 => -17.4029736,
                    ),
                    14 => 
                    array (
                    0 => -66.0520346,
                    1 => -17.4070277,
                    ),
                    15 => 
                    array (
                    0 => -66.0495026,
                    1 => -17.4086247,
                    ),
                    16 => 
                    array (
                    0 => -66.0470992,
                    1 => -17.4096689,
                    ),
                    17 => 
                    array (
                    0 => -66.0420352,
                    1 => -17.4113478,
                    ),
                    18 => 
                    array (
                    0 => -66.0356838,
                    1 => -17.4109588,
                    ),
                    19 => 
                    array (
                    0 => -66.0324222,
                    1 => -17.4102627,
                    ),
                    20 => 
                    array (
                    0 => -66.0292036,
                    1 => -17.4088704,
                    ),
                ),
                ),
            ),
            ),
            33 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'TIQUIPAYA',
                'description' => '30 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.2119807,
                    1 => -17.3283959,
                    ),
                    1 => 
                    array (
                    0 => -66.2181605,
                    1 => -17.3280682,
                    ),
                    2 => 
                    array (
                    0 => -66.2231387,
                    1 => -17.327085,
                    ),
                    3 => 
                    array (
                    0 => -66.2242545,
                    1 => -17.3289695,
                    ),
                    4 => 
                    array (
                    0 => -66.2262286,
                    1 => -17.3333939,
                    ),
                    5 => 
                    array (
                    0 => -66.2260569,
                    1 => -17.3374086,
                    ),
                    6 => 
                    array (
                    0 => -66.2278594,
                    1 => -17.3426521,
                    ),
                    7 => 
                    array (
                    0 => -66.2233104,
                    1 => -17.3444545,
                    ),
                    8 => 
                    array (
                    0 => -66.2185038,
                    1 => -17.3456834,
                    ),
                    9 => 
                    array (
                    0 => -66.2135257,
                    1 => -17.3465027,
                    ),
                    10 => 
                    array (
                    0 => -66.2134398,
                    1 => -17.3444545,
                    ),
                    11 => 
                    array (
                    0 => -66.2142123,
                    1 => -17.3411774,
                    ),
                    12 => 
                    array (
                    0 => -66.2135257,
                    1 => -17.338146,
                    ),
                    13 => 
                    array (
                    0 => -66.2129248,
                    1 => -17.3350325,
                    ),
                    14 => 
                    array (
                    0 => -66.2120665,
                    1 => -17.3312637,
                    ),
                    15 => 
                    array (
                    0 => -66.2119807,
                    1 => -17.3283959,
                    ),
                ),
                ),
            ),
            ),
            34 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1172296,
                    1 => -17.4013812,
                    ),
                    1 => 
                    array (
                    0 => -66.1179627,
                    1 => -17.4066645,
                    ),
                    2 => 
                    array (
                    0 => -66.1145295,
                    1 => -17.4099404,
                    ),
                    3 => 
                    array (
                    0 => -66.1113538,
                    1 => -17.4104318,
                    ),
                    4 => 
                    array (
                    0 => -66.1094655,
                    1 => -17.4099404,
                    ),
                    5 => 
                    array (
                    0 => -66.1067188,
                    1 => -17.4089577,
                    ),
                    6 => 
                    array (
                    0 => -66.1025131,
                    1 => -17.4083844,
                    ),
                    7 => 
                    array (
                    0 => -66.0995091,
                    1 => -17.4080568,
                    ),
                    8 => 
                    array (
                    0 => -66.0941434,
                    1 => -17.4078418,
                    ),
                    9 => 
                    array (
                    0 => -66.0949601,
                    1 => -17.4057636,
                    ),
                    10 => 
                    array (
                    0 => -66.0955806,
                    1 => -17.4037362,
                    ),
                    11 => 
                    array (
                    0 => -66.0989476,
                    1 => -17.4036745,
                    ),
                    12 => 
                    array (
                    0 => -66.1009218,
                    1 => -17.4036744,
                    ),
                    13 => 
                    array (
                    0 => -66.1053456,
                    1 => -17.4030608,
                    ),
                    14 => 
                    array (
                    0 => -66.1116077,
                    1 => -17.4018112,
                    ),
                    15 => 
                    array (
                    0 => -66.1146546,
                    1 => -17.4014631,
                    ),
                    16 => 
                    array (
                    0 => -66.1172296,
                    1 => -17.4013812,
                    ),
                ),
                ),
            ),
            ),
            35 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1144651,
                    1 => -17.4099404,
                    ),
                    1 => 
                    array (
                    0 => -66.1087571,
                    1 => -17.4135485,
                    ),
                    2 => 
                    array (
                    0 => -66.1033497,
                    1 => -17.4151046,
                    ),
                    3 => 
                    array (
                    0 => -66.0972558,
                    1 => -17.4145313,
                    ),
                    4 => 
                    array (
                    0 => -66.092684,
                    1 => -17.4136611,
                    ),
                    5 => 
                    array (
                    0 => -66.0933505,
                    1 => -17.4109688,
                    ),
                    6 => 
                    array (
                    0 => -66.0941434,
                    1 => -17.4078418,
                    ),
                    7 => 
                    array (
                    0 => -66.0972989,
                    1 => -17.4080568,
                    ),
                    8 => 
                    array (
                    0 => -66.0994447,
                    1 => -17.4080568,
                    ),
                    9 => 
                    array (
                    0 => -66.1060963,
                    1 => -17.4087166,
                    ),
                    10 => 
                    array (
                    0 => -66.1107312,
                    1 => -17.4102726,
                    ),
                    11 => 
                    array (
                    0 => -66.1144651,
                    1 => -17.4099404,
                    ),
                ),
                ),
            ),
            ),
            36 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '33 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0509658,
                    1 => -17.390092,
                    ),
                    1 => 
                    array (
                    0 => -66.0472751,
                    1 => -17.3929587,
                    ),
                    2 => 
                    array (
                    0 => -66.0417819,
                    1 => -17.3946378,
                    ),
                    3 => 
                    array (
                    0 => -66.0386491,
                    1 => -17.3935321,
                    ),
                    4 => 
                    array (
                    0 => -66.035645,
                    1 => -17.3936959,
                    ),
                    5 => 
                    array (
                    0 => -66.0324264,
                    1 => -17.3942692,
                    ),
                    6 => 
                    array (
                    0 => -66.0313535,
                    1 => -17.3946378,
                    ),
                    7 => 
                    array (
                    0 => -66.0307056,
                    1 => -17.3954384,
                    ),
                    8 => 
                    array (
                    0 => -66.0295081,
                    1 => -17.3956616,
                    ),
                    9 => 
                    array (
                    0 => -66.0284353,
                    1 => -17.3929587,
                    ),
                    10 => 
                    array (
                    0 => -66.0329628,
                    1 => -17.3906858,
                    ),
                    11 => 
                    array (
                    0 => -66.0344888,
                    1 => -17.3899159,
                    ),
                    12 => 
                    array (
                    0 => -66.0381126,
                    1 => -17.3890887,
                    ),
                    13 => 
                    array (
                    0 => -66.0418677,
                    1 => -17.38829,
                    ),
                    14 => 
                    array (
                    0 => -66.0455584,
                    1 => -17.3875119,
                    ),
                    15 => 
                    array (
                    0 => -66.0494403,
                    1 => -17.3863653,
                    ),
                    16 => 
                    array (
                    0 => -66.0509658,
                    1 => -17.390092,
                    ),
                ),
                ),
            ),
            ),
            37 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1985963,
                    1 => -17.3448417,
                    ),
                    1 => 
                    array (
                    0 => -66.1948197,
                    1 => -17.346214,
                    ),
                    2 => 
                    array (
                    0 => -66.1911628,
                    1 => -17.3474753,
                    ),
                    3 => 
                    array (
                    0 => -66.1840818,
                    1 => -17.3501993,
                    ),
                    4 => 
                    array (
                    0 => -66.1815128,
                    1 => -17.3480885,
                    ),
                    5 => 
                    array (
                    0 => -66.1795262,
                    1 => -17.343979,
                    ),
                    6 => 
                    array (
                    0 => -66.1789102,
                    1 => -17.3425928,
                    ),
                    7 => 
                    array (
                    0 => -66.183174,
                    1 => -17.3427501,
                    ),
                    8 => 
                    array (
                    0 => -66.1955922,
                    1 => -17.3379597,
                    ),
                    9 => 
                    array (
                    0 => -66.1985963,
                    1 => -17.3448417,
                    ),
                ),
                ),
            ),
            ),
            38 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '28 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1955922,
                    1 => -17.3379597,
                    ),
                    1 => 
                    array (
                    0 => -66.212651,
                    1 => -17.3339246,
                    ),
                    2 => 
                    array (
                    0 => -66.2135257,
                    1 => -17.338146,
                    ),
                    3 => 
                    array (
                    0 => -66.2142123,
                    1 => -17.3411774,
                    ),
                    4 => 
                    array (
                    0 => -66.1997979,
                    1 => -17.346808,
                    ),
                    5 => 
                    array (
                    0 => -66.1985963,
                    1 => -17.3448417,
                    ),
                    6 => 
                    array (
                    0 => -66.1955922,
                    1 => -17.3379597,
                    ),
                ),
                ),
            ),
            ),
            39 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1900255,
                    1 => -17.3539268,
                    ),
                    1 => 
                    array (
                    0 => -66.1855838,
                    1 => -17.3514692,
                    ),
                    2 => 
                    array (
                    0 => -66.1840818,
                    1 => -17.3501379,
                    ),
                    3 => 
                    array (
                    0 => -66.1985963,
                    1 => -17.3447803,
                    ),
                    4 => 
                    array (
                    0 => -66.2019067,
                    1 => -17.3505151,
                    ),
                    5 => 
                    array (
                    0 => -66.1948965,
                    1 => -17.3558726,
                    ),
                    6 => 
                    array (
                    0 => -66.1900255,
                    1 => -17.3539268,
                    ),
                ),
                ),
            ),
            ),
            40 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '30 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0652224,
                    1 => -17.3777088,
                    ),
                    1 => 
                    array (
                    0 => -66.06239,
                    1 => -17.3824597,
                    ),
                    2 => 
                    array (
                    0 => -66.0604159,
                    1 => -17.3848351,
                    ),
                    3 => 
                    array (
                    0 => -66.0598687,
                    1 => -17.3845223,
                    ),
                    4 => 
                    array (
                    0 => -66.0539035,
                    1 => -17.3850547,
                    ),
                    5 => 
                    array (
                    0 => -66.0527448,
                    1 => -17.385751,
                    ),
                    6 => 
                    array (
                    0 => -66.0513542,
                    1 => -17.3857412,
                    ),
                    7 => 
                    array (
                    0 => -66.0494403,
                    1 => -17.3863653,
                    ),
                    8 => 
                    array (
                    0 => -66.0478351,
                    1 => -17.3826696,
                    ),
                    9 => 
                    array (
                    0 => -66.0458181,
                    1 => -17.3791065,
                    ),
                    10 => 
                    array (
                    0 => -66.0482213,
                    1 => -17.3781235,
                    ),
                    11 => 
                    array (
                    0 => -66.0563753,
                    1 => -17.3777549,
                    ),
                    12 => 
                    array (
                    0 => -66.0652224,
                    1 => -17.3777088,
                    ),
                ),
                ),
            ),
            ),
            41 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1698909,
                    1 => -17.4543759,
                    ),
                    1 => 
                    array (
                    0 => -66.1716034,
                    1 => -17.4646869,
                    ),
                    2 => 
                    array (
                    0 => -66.1584713,
                    1 => -17.4671021,
                    ),
                    3 => 
                    array (
                    0 => -66.1543407,
                    1 => -17.4670101,
                    ),
                    4 => 
                    array (
                    0 => -66.1501243,
                    1 => -17.4666109,
                    ),
                    5 => 
                    array (
                    0 => -66.1431504,
                    1 => -17.4654441,
                    ),
                    6 => 
                    array (
                    0 => -66.1389018,
                    1 => -17.46264,
                    ),
                    7 => 
                    array (
                    0 => -66.1349107,
                    1 => -17.4599585,
                    ),
                    8 => 
                    array (
                    0 => -66.1331513,
                    1 => -17.4515661,
                    ),
                    9 => 
                    array (
                    0 => -66.1323895,
                    1 => -17.448516,
                    ),
                    10 => 
                    array (
                    0 => -66.133992,
                    1 => -17.4473651,
                    ),
                    11 => 
                    array (
                    0 => -66.1358734,
                    1 => -17.4463779,
                    ),
                    12 => 
                    array (
                    0 => -66.1395182,
                    1 => -17.4443626,
                    ),
                    13 => 
                    array (
                    0 => -66.1416056,
                    1 => -17.4516889,
                    ),
                    14 => 
                    array (
                    0 => -66.1437555,
                    1 => -17.4544168,
                    ),
                    15 => 
                    array (
                    0 => -66.1486907,
                    1 => -17.4559316,
                    ),
                    16 => 
                    array (
                    0 => -66.1569305,
                    1 => -17.4572416,
                    ),
                    17 => 
                    array (
                    0 => -66.1698909,
                    1 => -17.4543759,
                    ),
                ),
                ),
            ),
            ),
            42 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '35 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0284353,
                    1 => -17.3929587,
                    ),
                    1 => 
                    array (
                    0 => -66.0254744,
                    1 => -17.3934691,
                    ),
                    2 => 
                    array (
                    0 => -66.024831,
                    1 => -17.3894746,
                    ),
                    3 => 
                    array (
                    0 => -66.026634,
                    1 => -17.3884476,
                    ),
                    4 => 
                    array (
                    0 => -66.027493,
                    1 => -17.3857006,
                    ),
                    5 => 
                    array (
                    0 => -66.0280944,
                    1 => -17.3837727,
                    ),
                    6 => 
                    array (
                    0 => -66.0368062,
                    1 => -17.3810287,
                    ),
                    7 => 
                    array (
                    0 => -66.0458181,
                    1 => -17.3791065,
                    ),
                    8 => 
                    array (
                    0 => -66.0478351,
                    1 => -17.3826696,
                    ),
                    9 => 
                    array (
                    0 => -66.0486937,
                    1 => -17.3847147,
                    ),
                    10 => 
                    array (
                    0 => -66.0494403,
                    1 => -17.3863653,
                    ),
                    11 => 
                    array (
                    0 => -66.0489941,
                    1 => -17.3863938,
                    ),
                    12 => 
                    array (
                    0 => -66.0445739,
                    1 => -17.3877044,
                    ),
                    13 => 
                    array (
                    0 => -66.0428572,
                    1 => -17.3881139,
                    ),
                    14 => 
                    array (
                    0 => -66.0418677,
                    1 => -17.38829,
                    ),
                    15 => 
                    array (
                    0 => -66.037922,
                    1 => -17.3891787,
                    ),
                    16 => 
                    array (
                    0 => -66.0344888,
                    1 => -17.3899159,
                    ),
                    17 => 
                    array (
                    0 => -66.0284353,
                    1 => -17.3929587,
                    ),
                ),
                ),
            ),
            ),
            43 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1716463,
                    1 => -17.4649324,
                    ),
                    1 => 
                    array (
                    0 => -66.174571,
                    1 => -17.4832064,
                    ),
                    2 => 
                    array (
                    0 => -66.1632414,
                    1 => -17.4809141,
                    ),
                    3 => 
                    array (
                    0 => -66.1474055,
                    1 => -17.4775985,
                    ),
                    4 => 
                    array (
                    0 => -66.1338872,
                    1 => -17.4689611,
                    ),
                    5 => 
                    array (
                    0 => -66.1275356,
                    1 => -17.4630662,
                    ),
                    6 => 
                    array (
                    0 => -66.1237806,
                    1 => -17.4592999,
                    ),
                    7 => 
                    array (
                    0 => -66.1248963,
                    1 => -17.457693,
                    ),
                    8 => 
                    array (
                    0 => -66.1262911,
                    1 => -17.4556974,
                    ),
                    9 => 
                    array (
                    0 => -66.1288414,
                    1 => -17.4521578,
                    ),
                    10 => 
                    array (
                    0 => -66.1306154,
                    1 => -17.45004,
                    ),
                    11 => 
                    array (
                    0 => -66.1313844,
                    1 => -17.449319,
                    ),
                    12 => 
                    array (
                    0 => -66.1323895,
                    1 => -17.4485774,
                    ),
                    13 => 
                    array (
                    0 => -66.1349107,
                    1 => -17.4600199,
                    ),
                    14 => 
                    array (
                    0 => -66.1431504,
                    1 => -17.4655055,
                    ),
                    15 => 
                    array (
                    0 => -66.15174,
                    1 => -17.467119,
                    ),
                    16 => 
                    array (
                    0 => -66.1583426,
                    1 => -17.4673886,
                    ),
                    17 => 
                    array (
                    0 => -66.1716463,
                    1 => -17.4649324,
                    ),
                ),
                ),
            ),
            ),
            44 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '30 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.174571,
                    1 => -17.4829813,
                    ),
                    1 => 
                    array (
                    0 => -66.1745417,
                    1 => -17.4987374,
                    ),
                    2 => 
                    array (
                    0 => -66.1554871,
                    1 => -17.493662,
                    ),
                    3 => 
                    array (
                    0 => -66.1438141,
                    1 => -17.4862944,
                    ),
                    4 => 
                    array (
                    0 => -66.1299095,
                    1 => -17.4767978,
                    ),
                    5 => 
                    array (
                    0 => -66.1200389,
                    1 => -17.4678739,
                    ),
                    6 => 
                    array (
                    0 => -66.122693,
                    1 => -17.4646821,
                    ),
                    7 => 
                    array (
                    0 => -66.1237806,
                    1 => -17.4590748,
                    ),
                    8 => 
                    array (
                    0 => -66.1275356,
                    1 => -17.4628411,
                    ),
                    9 => 
                    array (
                    0 => -66.1336298,
                    1 => -17.4685212,
                    ),
                    10 => 
                    array (
                    0 => -66.141486,
                    1 => -17.4736253,
                    ),
                    11 => 
                    array (
                    0 => -66.1474055,
                    1 => -17.4773734,
                    ),
                    12 => 
                    array (
                    0 => -66.1513176,
                    1 => -17.4782216,
                    ),
                    13 => 
                    array (
                    0 => -66.155809,
                    1 => -17.4791208,
                    ),
                    14 => 
                    array (
                    0 => -66.1645677,
                    1 => -17.480995,
                    ),
                    15 => 
                    array (
                    0 => -66.174571,
                    1 => -17.4829813,
                    ),
                ),
                ),
            ),
            ),
            45 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUCURSAL SUD',
                'description' => NULL,
            ),
            'geometry' => 
            array (
                'type' => 'Point',
                'coordinates' => 
                array (
                0 => -66.1556203,
                1 => -17.4050532,
                ),
            ),
            ),
            46 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUCURSAL VILLAZON',
                'description' => NULL,
            ),
            'geometry' => 
            array (
                'type' => 'Point',
                'coordinates' => 
                array (
                0 => -66.1356961,
                1 => -17.3749376,
                ),
            ),
            ),
            47 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '30 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.092684,
                    1 => -17.4136611,
                    ),
                    1 => 
                    array (
                    0 => -66.0882356,
                    1 => -17.4127117,
                    ),
                    2 => 
                    array (
                    0 => -66.0750177,
                    1 => -17.4137354,
                    ),
                    3 => 
                    array (
                    0 => -66.078923,
                    1 => -17.4037437,
                    ),
                    4 => 
                    array (
                    0 => -66.0812046,
                    1 => -17.4041369,
                    ),
                    5 => 
                    array (
                    0 => -66.0821899,
                    1 => -17.4042848,
                    ),
                    6 => 
                    array (
                    0 => -66.0831107,
                    1 => -17.4044122,
                    ),
                    7 => 
                    array (
                    0 => -66.0849954,
                    1 => -17.4044112,
                    ),
                    8 => 
                    array (
                    0 => -66.0869995,
                    1 => -17.4042274,
                    ),
                    9 => 
                    array (
                    0 => -66.09129,
                    1 => -17.4035928,
                    ),
                    10 => 
                    array (
                    0 => -66.0939932,
                    1 => -17.4033164,
                    ),
                    11 => 
                    array (
                    0 => -66.0955806,
                    1 => -17.4037362,
                    ),
                    12 => 
                    array (
                    0 => -66.0941434,
                    1 => -17.4078418,
                    ),
                    13 => 
                    array (
                    0 => -66.0938964,
                    1 => -17.4088088,
                    ),
                    14 => 
                    array (
                    0 => -66.093596,
                    1 => -17.409382,
                    ),
                    15 => 
                    array (
                    0 => -66.0932742,
                    1 => -17.4107116,
                    ),
                    16 => 
                    array (
                    0 => -66.092684,
                    1 => -17.4136611,
                    ),
                ),
                ),
            ),
            ),
            48 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '35 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0934792,
                    1 => -17.4138761,
                    ),
                    1 => 
                    array (
                    0 => -66.0930677,
                    1 => -17.4141337,
                    ),
                    2 => 
                    array (
                    0 => -66.092145,
                    1 => -17.4168772,
                    ),
                    3 => 
                    array (
                    0 => -66.0918661,
                    1 => -17.4177576,
                    ),
                    4 => 
                    array (
                    0 => -66.0917802,
                    1 => -17.4196002,
                    ),
                    5 => 
                    array (
                    0 => -66.091909,
                    1 => -17.4215452,
                    ),
                    6 => 
                    array (
                    0 => -66.0916944,
                    1 => -17.4243705,
                    ),
                    7 => 
                    array (
                    0 => -66.0881539,
                    1 => -17.4244524,
                    ),
                    8 => 
                    array (
                    0 => -66.0866733,
                    1 => -17.4233469,
                    ),
                    9 => 
                    array (
                    0 => -66.083562,
                    1 => -17.4229784,
                    ),
                    10 => 
                    array (
                    0 => -66.0822101,
                    1 => -17.4222004,
                    ),
                    11 => 
                    array (
                    0 => -66.079249,
                    1 => -17.4206239,
                    ),
                    12 => 
                    array (
                    0 => -66.0772319,
                    1 => -17.4196617,
                    ),
                    13 => 
                    array (
                    0 => -66.0746356,
                    1 => -17.4198255,
                    ),
                    14 => 
                    array (
                    0 => -66.0750177,
                    1 => -17.4137354,
                    ),
                    15 => 
                    array (
                    0 => -66.0882356,
                    1 => -17.4127117,
                    ),
                    16 => 
                    array (
                    0 => -66.0934792,
                    1 => -17.4138761,
                    ),
                ),
                ),
            ),
            ),
            49 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0971548,
                    1 => -17.3977573,
                    ),
                    1 => 
                    array (
                    0 => -66.0969593,
                    1 => -17.398269,
                    ),
                    2 => 
                    array (
                    0 => -66.0968823,
                    1 => -17.3987296,
                    ),
                    3 => 
                    array (
                    0 => -66.0955752,
                    1 => -17.4037055,
                    ),
                    4 => 
                    array (
                    0 => -66.0947769,
                    1 => -17.40347,
                    ),
                    5 => 
                    array (
                    0 => -66.0939932,
                    1 => -17.4033164,
                    ),
                    6 => 
                    array (
                    0 => -66.09129,
                    1 => -17.4035928,
                    ),
                    7 => 
                    array (
                    0 => -66.0878048,
                    1 => -17.4041027,
                    ),
                    8 => 
                    array (
                    0 => -66.0868454,
                    1 => -17.4042245,
                    ),
                    9 => 
                    array (
                    0 => -66.0849954,
                    1 => -17.4044112,
                    ),
                    10 => 
                    array (
                    0 => -66.0831107,
                    1 => -17.4044122,
                    ),
                    11 => 
                    array (
                    0 => -66.0812046,
                    1 => -17.4041369,
                    ),
                    12 => 
                    array (
                    0 => -66.078923,
                    1 => -17.4037437,
                    ),
                    13 => 
                    array (
                    0 => -66.0820218,
                    1 => -17.3944913,
                    ),
                    14 => 
                    array (
                    0 => -66.0854921,
                    1 => -17.3943888,
                    ),
                    15 => 
                    array (
                    0 => -66.0891458,
                    1 => -17.3942456,
                    ),
                    16 => 
                    array (
                    0 => -66.0909053,
                    1 => -17.3949827,
                    ),
                    17 => 
                    array (
                    0 => -66.0931477,
                    1 => -17.395208,
                    ),
                    18 => 
                    array (
                    0 => -66.0950413,
                    1 => -17.3949521,
                    ),
                    19 => 
                    array (
                    0 => -66.0972568,
                    1 => -17.3946141,
                    ),
                    20 => 
                    array (
                    0 => -66.0972837,
                    1 => -17.3958121,
                    ),
                    21 => 
                    array (
                    0 => -66.0973855,
                    1 => -17.3968461,
                    ),
                    22 => 
                    array (
                    0 => -66.0971548,
                    1 => -17.3977573,
                    ),
                ),
                ),
            ),
            ),
            50 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '35 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.078923,
                    1 => -17.4037437,
                    ),
                    1 => 
                    array (
                    0 => -66.0747991,
                    1 => -17.4136577,
                    ),
                    2 => 
                    array (
                    0 => -66.065229,
                    1 => -17.4140876,
                    ),
                    3 => 
                    array (
                    0 => -66.0563026,
                    1 => -17.4150704,
                    ),
                    4 => 
                    array (
                    0 => -66.0584484,
                    1 => -17.4059592,
                    ),
                    5 => 
                    array (
                    0 => -66.0598217,
                    1 => -17.4012908,
                    ),
                    6 => 
                    array (
                    0 => -66.0666881,
                    1 => -17.4016185,
                    ),
                    7 => 
                    array (
                    0 => -66.0726104,
                    1 => -17.4024375,
                    ),
                    8 => 
                    array (
                    0 => -66.078923,
                    1 => -17.4037437,
                    ),
                ),
                ),
            ),
            ),
            51 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0820218,
                    1 => -17.3944913,
                    ),
                    1 => 
                    array (
                    0 => -66.0809205,
                    1 => -17.3976625,
                    ),
                    2 => 
                    array (
                    0 => -66.078923,
                    1 => -17.4037437,
                    ),
                    3 => 
                    array (
                    0 => -66.0739038,
                    1 => -17.4026176,
                    ),
                    4 => 
                    array (
                    0 => -66.0663936,
                    1 => -17.4015529,
                    ),
                    5 => 
                    array (
                    0 => -66.0598217,
                    1 => -17.4012908,
                    ),
                    6 => 
                    array (
                    0 => -66.057061,
                    1 => -17.4011461,
                    ),
                    7 => 
                    array (
                    0 => -66.0560278,
                    1 => -17.3994908,
                    ),
                    8 => 
                    array (
                    0 => -66.054912,
                    1 => -17.3979346,
                    ),
                    9 => 
                    array (
                    0 => -66.0568849,
                    1 => -17.396866,
                    ),
                    10 => 
                    array (
                    0 => -66.0588387,
                    1 => -17.3953751,
                    ),
                    11 => 
                    array (
                    0 => -66.0606841,
                    1 => -17.3950065,
                    ),
                    12 => 
                    array (
                    0 => -66.0626735,
                    1 => -17.3943276,
                    ),
                    13 => 
                    array (
                    0 => -66.066576,
                    1 => -17.393987,
                    ),
                    14 => 
                    array (
                    0 => -66.0679064,
                    1 => -17.3938949,
                    ),
                    15 => 
                    array (
                    0 => -66.069269,
                    1 => -17.3939972,
                    ),
                    16 => 
                    array (
                    0 => -66.0703633,
                    1 => -17.3940382,
                    ),
                    17 => 
                    array (
                    0 => -66.0719404,
                    1 => -17.3941918,
                    ),
                    18 => 
                    array (
                    0 => -66.0733781,
                    1 => -17.3943863,
                    ),
                    19 => 
                    array (
                    0 => -66.0748264,
                    1 => -17.3944989,
                    ),
                    20 => 
                    array (
                    0 => -66.0759315,
                    1 => -17.3945911,
                    ),
                    21 => 
                    array (
                    0 => -66.0770366,
                    1 => -17.3945399,
                    ),
                    22 => 
                    array (
                    0 => -66.0786674,
                    1 => -17.3945705,
                    ),
                    23 => 
                    array (
                    0 => -66.0807917,
                    1 => -17.3945399,
                    ),
                    24 => 
                    array (
                    0 => -66.0820218,
                    1 => -17.3944913,
                    ),
                ),
                ),
            ),
            ),
            52 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SACABA',
                'description' => '35 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0598217,
                    1 => -17.4012908,
                    ),
                    1 => 
                    array (
                    0 => -66.0584484,
                    1 => -17.4059592,
                    ),
                    2 => 
                    array (
                    0 => -66.0572513,
                    1 => -17.4107473,
                    ),
                    3 => 
                    array (
                    0 => -66.0563026,
                    1 => -17.4150704,
                    ),
                    4 => 
                    array (
                    0 => -66.0524018,
                    1 => -17.415743,
                    ),
                    5 => 
                    array (
                    0 => -66.0479387,
                    1 => -17.4169306,
                    ),
                    6 => 
                    array (
                    0 => -66.042188,
                    1 => -17.4177904,
                    ),
                    7 => 
                    array (
                    0 => -66.0342057,
                    1 => -17.4194283,
                    ),
                    8 => 
                    array (
                    0 => -66.0258802,
                    1 => -17.4180361,
                    ),
                    9 => 
                    array (
                    0 => -66.0210307,
                    1 => -17.4145964,
                    ),
                    10 => 
                    array (
                    0 => -66.0186274,
                    1 => -17.4095802,
                    ),
                    11 => 
                    array (
                    0 => -66.0188849,
                    1 => -17.4048915,
                    ),
                    12 => 
                    array (
                    0 => -66.0217603,
                    1 => -17.400264,
                    ),
                    13 => 
                    array (
                    0 => -66.0254744,
                    1 => -17.3934691,
                    ),
                    14 => 
                    array (
                    0 => -66.0284353,
                    1 => -17.3929587,
                    ),
                    15 => 
                    array (
                    0 => -66.0295081,
                    1 => -17.3956616,
                    ),
                    16 => 
                    array (
                    0 => -66.0307056,
                    1 => -17.3954384,
                    ),
                    17 => 
                    array (
                    0 => -66.0283024,
                    1 => -17.398776,
                    ),
                    18 => 
                    array (
                    0 => -66.0263951,
                    1 => -17.4032125,
                    ),
                    19 => 
                    array (
                    0 => -66.0292036,
                    1 => -17.4088704,
                    ),
                    20 => 
                    array (
                    0 => -66.033047,
                    1 => -17.4104607,
                    ),
                    21 => 
                    array (
                    0 => -66.0356838,
                    1 => -17.4109588,
                    ),
                    22 => 
                    array (
                    0 => -66.0420352,
                    1 => -17.4113478,
                    ),
                    23 => 
                    array (
                    0 => -66.0489257,
                    1 => -17.4090684,
                    ),
                    24 => 
                    array (
                    0 => -66.0520346,
                    1 => -17.4070277,
                    ),
                    25 => 
                    array (
                    0 => -66.057061,
                    1 => -17.4011461,
                    ),
                    26 => 
                    array (
                    0 => -66.0598217,
                    1 => -17.4012908,
                    ),
                ),
                ),
            ),
            ),
            53 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1188349,
                    1 => -17.4229318,
                    ),
                    1 => 
                    array (
                    0 => -66.1178049,
                    1 => -17.4262075,
                    ),
                    2 => 
                    array (
                    0 => -66.1163868,
                    1 => -17.4269616,
                    ),
                    3 => 
                    array (
                    0 => -66.1143269,
                    1 => -17.4322025,
                    ),
                    4 => 
                    array (
                    0 => -66.1121811,
                    1 => -17.4448948,
                    ),
                    5 => 
                    array (
                    0 => -66.1166229,
                    1 => -17.4471261,
                    ),
                    6 => 
                    array (
                    0 => -66.1181949,
                    1 => -17.4479638,
                    ),
                    7 => 
                    array (
                    0 => -66.1243584,
                    1 => -17.4511537,
                    ),
                    8 => 
                    array (
                    0 => -66.1286606,
                    1 => -17.4522641,
                    ),
                    9 => 
                    array (
                    0 => -66.1237155,
                    1 => -17.4592614,
                    ),
                    10 => 
                    array (
                    0 => -66.1143599,
                    1 => -17.4559863,
                    ),
                    11 => 
                    array (
                    0 => -66.1070643,
                    1 => -17.4532843,
                    ),
                    12 => 
                    array (
                    0 => -66.1027728,
                    1 => -17.4488628,
                    ),
                    13 => 
                    array (
                    0 => -66.1034594,
                    1 => -17.4419028,
                    ),
                    14 => 
                    array (
                    0 => -66.106206,
                    1 => -17.4334685,
                    ),
                    15 => 
                    array (
                    0 => -66.1086951,
                    1 => -17.4250338,
                    ),
                    16 => 
                    array (
                    0 => -66.1109267,
                    1 => -17.419547,
                    ),
                    17 => 
                    array (
                    0 => -66.1124716,
                    1 => -17.4167625,
                    ),
                    18 => 
                    array (
                    0 => -66.1155245,
                    1 => -17.419233,
                    ),
                    19 => 
                    array (
                    0 => -66.1188349,
                    1 => -17.4229318,
                    ),
                ),
                ),
            ),
            ),
            54 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '15 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1496105,
                    1 => -17.3670267,
                    ),
                    1 => 
                    array (
                    0 => -66.1482963,
                    1 => -17.3647087,
                    ),
                    2 => 
                    array (
                    0 => -66.1475668,
                    1 => -17.3620054,
                    ),
                    3 => 
                    array (
                    0 => -66.1536177,
                    1 => -17.3607766,
                    ),
                    4 => 
                    array (
                    0 => -66.1574445,
                    1 => -17.3597455,
                    ),
                    5 => 
                    array (
                    0 => -66.162673,
                    1 => -17.3581142,
                    ),
                    6 => 
                    array (
                    0 => -66.1670932,
                    1 => -17.3561889,
                    ),
                    7 => 
                    array (
                    0 => -66.1697515,
                    1 => -17.3621039,
                    ),
                    8 => 
                    array (
                    0 => -66.1671765,
                    1 => -17.3633327,
                    ),
                    9 => 
                    array (
                    0 => -66.1632917,
                    1 => -17.3646607,
                    ),
                    10 => 
                    array (
                    0 => -66.1580785,
                    1 => -17.3658722,
                    ),
                    11 => 
                    array (
                    0 => -66.1570056,
                    1 => -17.3663842,
                    ),
                    12 => 
                    array (
                    0 => -66.1543019,
                    1 => -17.3666914,
                    ),
                    13 => 
                    array (
                    0 => -66.1496105,
                    1 => -17.3670267,
                    ),
                ),
                ),
            ),
            ),
            55 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                    1 => 
                    array (
                    0 => -66.0820783,
                    1 => -17.3892318,
                    ),
                    2 => 
                    array (
                    0 => -66.0824577,
                    1 => -17.39314,
                    ),
                    3 => 
                    array (
                    0 => -66.0820218,
                    1 => -17.3944913,
                    ),
                    4 => 
                    array (
                    0 => -66.0759315,
                    1 => -17.3945911,
                    ),
                    5 => 
                    array (
                    0 => -66.0739244,
                    1 => -17.3944124,
                    ),
                    6 => 
                    array (
                    0 => -66.0695685,
                    1 => -17.3940029,
                    ),
                    7 => 
                    array (
                    0 => -66.0694397,
                    1 => -17.3921191,
                    ),
                    8 => 
                    array (
                    0 => -66.0677232,
                    1 => -17.384993,
                    ),
                    9 => 
                    array (
                    0 => -66.0706842,
                    1 => -17.3847473,
                    ),
                    10 => 
                    array (
                    0 => -66.0735632,
                    1 => -17.3852974,
                    ),
                    11 => 
                    array (
                    0 => -66.0758056,
                    1 => -17.3865874,
                    ),
                    12 => 
                    array (
                    0 => -66.0815068,
                    1 => -17.3857681,
                    ),
                ),
                ),
            ),
            ),
            56 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'VILLAZON',
                'description' => '10 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1563049,
                    1 => -17.3666579,
                    ),
                    1 => 
                    array (
                    0 => -66.1567125,
                    1 => -17.3728016,
                    ),
                    2 => 
                    array (
                    0 => -66.1626992,
                    1 => -17.3725149,
                    ),
                    3 => 
                    array (
                    0 => -66.1602502,
                    1 => -17.3811999,
                    ),
                    4 => 
                    array (
                    0 => -66.1497526,
                    1 => -17.3784358,
                    ),
                    5 => 
                    array (
                    0 => -66.1496101,
                    1 => -17.3670265,
                    ),
                    6 => 
                    array (
                    0 => -66.1563049,
                    1 => -17.3666579,
                    ),
                ),
                ),
            ),
            ),
            57 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '25 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.2648258,
                    1 => -17.384237,
                    ),
                    1 => 
                    array (
                    0 => -66.2853798,
                    1 => -17.3848601,
                    ),
                    2 => 
                    array (
                    0 => -66.2852081,
                    1 => -17.400668,
                    ),
                    3 => 
                    array (
                    0 => -66.2650404,
                    1 => -17.3988164,
                    ),
                    4 => 
                    array (
                    0 => -66.2648258,
                    1 => -17.384237,
                    ),
                ),
                ),
            ),
            ),
            58 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'GALINDO',
                'description' => '35 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.3011871,
                    1 => -17.3854764,
                    ),
                    1 => 
                    array (
                    0 => -66.3136929,
                    1 => -17.3802731,
                    ),
                    2 => 
                    array (
                    0 => -66.3276833,
                    1 => -17.3810103,
                    ),
                    3 => 
                    array (
                    0 => -66.3209027,
                    1 => -17.3963271,
                    ),
                    4 => 
                    array (
                    0 => -66.3184136,
                    1 => -17.4029613,
                    ),
                    5 => 
                    array (
                    0 => -66.3010154,
                    1 => -17.4013663,
                    ),
                    6 => 
                    array (
                    0 => -66.3011871,
                    1 => -17.3854764,
                    ),
                ),
                ),
            ),
            ),
            59 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '18 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1642179,
                    1 => -17.4342713,
                    ),
                    1 => 
                    array (
                    0 => -66.1707279,
                    1 => -17.4288411,
                    ),
                    2 => 
                    array (
                    0 => -66.1750194,
                    1 => -17.4324852,
                    ),
                    3 => 
                    array (
                    0 => -66.1653337,
                    1 => -17.4384475,
                    ),
                    4 => 
                    array (
                    0 => -66.1642179,
                    1 => -17.4342713,
                    ),
                ),
                ),
            ),
            ),
            60 => 
            array (
            'type' => 'Feature',
            'properties' => 
            array (
                'Name' => 'SUD',
                'description' => '20 Bs',
            ),
            'geometry' => 
            array (
                'type' => 'Polygon',
                'coordinates' => 
                array (
                0 => 
                array (
                    0 => 
                    array (
                    0 => -66.1707279,
                    1 => -17.4288411,
                    ),
                    1 => 
                    array (
                    0 => -66.1753026,
                    1 => -17.424985,
                    ),
                    2 => 
                    array (
                    0 => -66.183714,
                    1 => -17.4315363,
                    ),
                    3 => 
                    array (
                    0 => -66.1787787,
                    1 => -17.4358353,
                    ),
                    4 => 
                    array (
                    0 => -66.1707279,
                    1 => -17.4288411,
                    ),
                ),
                ),
            ),
            ),
        );

        $transaction = \Yii::$app->db->beginTransaction();
        try {
            foreach ($precios as $key => $item) {
                $nombre = $item['properties']['Name'];
                $precio = $item['properties']['description'];
                
                $model = new Preciodelivery;
                $model->nombre = $nombre;
                $model->precio = $precio != ''?$precio:'sin precio';
                $model->estado = 'Activo';
                if (!$model->save()){
                    throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($model->errors));
                }

                $cordinates = $item['geometry']['coordinates'];
                if (is_array($cordinates)){
                    foreach ($cordinates as $key1 => $cord) {
                        $cordinates1 = $item['geometry']['coordinates'][$key1];
                        if (is_array($cordinates1)){
                            foreach ($cordinates1 as $key2 => $cord) {
                                if (is_array($cord[0])){
                                    foreach ($cord as $key2 => $cordmin) {
                                        if (is_array($cordmin[0])){
                                            throw new \Exception($key.' '.$nombre.' '.$precio.' '.print_r($cord[1]).'<br>');
                                        }
                                        $this->registerCordinate($model->id, strval($cordmin[1]), strval($cordmin[0]), $key, $model);
                                    }
                                }else{
                                    $this->registerCordinate($model->id, strval($cord[1]), strval($cord[0]), $key, $model);
                                }
                            }
                        }else{
                            $this->registerCordinate($model->id, strval($item['geometry']['coordinates'][1]), strval($item['geometry']['coordinates'][0]), $key, $model);
                        }
                    }
                }else{
                    throw new \Exception('no tiene cordenadas');
                }

            }
            
            echo 'precios registrados';
            $transaction->commit();
            // return $this->redirect(['/pedidodelivery/create', 'cl' => $model->id]);
        } catch (\Throwable $e) {
            $transaction->rollBack();
            // return $e->getMessage();
            return $e;
        }

        
    }


    private function registerCordinate($precio_delivery_id, $lat, $lng, $key = null, $model = null){

        $cordinate = new PrecioCoordinates;
        $cordinate->precio_delivery_id = $precio_delivery_id;
        $cordinate->lat = $lat;
        $cordinate->lng = $lng;
        if (!$cordinate->save()){
            $res = $key.' '.$model->nombre.' '.$model->precio;
            throw new \Exception($res);
            // throw new \Exception(\app\components\errors\ErrorsComponent::formatJustString($cordinate->errors));
        }
        return $cordinate;
    }
    
}
