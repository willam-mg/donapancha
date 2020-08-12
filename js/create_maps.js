let preciosDelivery = [];
let polygonesArray = [];
let marker;

function getPrecioDelivery(id){
    console.log('getpreciodelivery');
    $.ajax({
        beforeSend: function (xhr) {
            $('#loading').css('display', 'flex');
        },
        complete: function (jqXHR, textStatus) {
            $('#loading').css('display', 'none');
        },
        success: function (data, textStatus, jqXHR) {
            $('#precio_delivery_id').val(data.id);
            $('#precio_pedido').html(data.precio);
            var regex = /(\d+)/g;
            let validation = data.precio.match(regex);
            console.log(validation); 
            let valorPrecioDelivery = null;
            if ( validation.length > 0 ) {
                valorPrecioDelivery = validation[0];
            }
            $("#precio_pedido_valor").val(valorPrecioDelivery);
            calcularTotal();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "403") {
                location.reload();
            }
        },
        type: 'GET',
        dataType: 'JSON',
        url: "/pedidodelivery/get-precio-delivery",
        cache: true,
        data: {
            id:id
        },
    });
}

// function calcularTotalMasDelivery(tot = null){
//     let precioPedido = $("#precio_pedido_valor").val();
//     let total = 0;
//     if (!tot) {
//         total = calcularTotal();
//     }else{
//         total = tot;
//     }

//     let res = '';
//     console.log(precioPedido, total, res);
//     res = parseFloat(precioPedido) + parseFloat(total);
//     $('#total_mas_delivery').html(res+' Bs');
// }

function cordenadasPrecio(){
    console.log('cordenadasprecio');
    $.ajax({
        beforeSend: function (xhr) {
            $('#loading').css('display', 'flex');
        },
        complete: function (jqXHR, textStatus) {
            console.log('completado');
            $('#loading').css('display', 'none');
        },
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            
            preciosDelivery = data;
            // console.log(preciosDelivery);
            initMap();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "403") {
                location.reload();
            }
        },
        type: 'GET',
        dataType: 'JSON',
        url: "/pedidodelivery/get-cordenadas",
        cache: false,
    });
}

function defolutColor(){
    polygonesArray.forEach((item, i) => {
        item.setOptions({
            fillColor: "#bf292380"
        });
    });
}

function initMap(){
    let latitude = parseFloat($('#latitude').val());
    let longitude = parseFloat($('#longitude').val());
    if (latitude && longitude){
        let position = new google.maps.LatLng(latitude, longitude)
        map = new google.maps.Map(document.getElementById("map"), {
            zoom: 12,
            center: { lat: latitude, lng: longitude},
            mapTypeId: "terrain"
        });
        addMarker(position);
    }else{
        map = new google.maps.Map(document.getElementById("map"), {
            zoom: 12,
            center: { lat: -17.408744, lng: -66.153893 },
            mapTypeId: "terrain"
        });
    }

    

    // Define the LatLng coordinates for the polygon.
    var triangleCoords = [
        { lat: 25.774, lng: -80.19 },
        { lat: 18.466, lng: -66.118 },
        { lat: 32.321, lng: -64.757 }
    ];
    
    preciosDelivery.forEach((item, i)=>{
        // Construct the polygon.
        // console.log('creando poligono', item);
        
        var bermudaTriangle = new google.maps.Polygon({
            paths: item.cordinates,
            // strokeColor: "#FF0000",
            strokeColor: "#35080636",
            strokeOpacity: 0.8,
            strokeWeight: 3,
            // fillColor: "#FF0000",
            fillColor: "#bf292380",
            fillOpacity: 0.35,
            zIndex: item.id,            
        });
        bermudaTriangle.setMap(map);

        // Add a listener for the click event.
        bermudaTriangle.addListener("click", showArrays);
        polygonesArray.push(bermudaTriangle);
    });


    // // Construct the polygon.
    // var bermudaTriangle = new google.maps.Polygon({
    //     paths: triangleCoords,
    //     strokeColor: "#FF0000",
    //     strokeOpacity: 0.8,
    //     strokeWeight: 3,
    //     fillColor: "#FF0000",
    //     fillOpacity: 0.35,
    // });
    // bermudaTriangle.setMap(map);

    // // Add a listener for the click event.
    // bermudaTriangle.addListener("click", showArrays);

    infoWindow = new google.maps.InfoWindow();





    map.addListener('click', function (mapsMouseEvent) {
        if (!latitude && !longitude) {
            // defolutColor();
            // this.setOptions({
            //     fillColor: "#ffff00"
            // });
            // getPrecioDelivery(this.zIndex);
            addMarker(mapsMouseEvent.latLng);
        }

        // // let latLng = new LatLng();
        // $('#precio_delivery_id').val('');
        // $('#precio_pedido').val(0);
        // // calcularSubtotal();
        // addMarker(mapsMouseEvent.latLng);
        // // Close the current InfoWindow.
        // infoWindow.close();

        // // Create a new InfoWindow.
        // infoWindow = new google.maps.InfoWindow({ position: mapsMouseEvent.latLng });
        // infoWindow.setContent(mapsMouseEvent.latLng.toString());
        // infoWindow.open(map);
    });
}

function showArrays(event) {
    // // Since this polygon has only one path, we can call getPath() to return the
    // // MVCArray of LatLngs.
    // var vertices = this.getPath();
    // var contentString =
    //     "<b>ID DE PRECIO " + this.zIndex+"</b><br>" +
    //     "<b>Bermuda Triangle polygon</b><br>" +
    //     "Clicked location: <br>" +
    //     event.latLng.lat() +
    //     "," +
    //     event.latLng.lng() +
    //     "<br>";

    // // Iterate over the vertices.
    // for (var i = 0; i < vertices.getLength(); i++) {
    //     var xy = vertices.getAt(i);
    //     contentString +=
    //         "<br>" + "Coordinate " + i + ":<br>" + xy.lat() + "," + xy.lng();
    // }

    // // Replace the info window's content and position.
    // infoWindow.setContent(contentString);
    // infoWindow.setPosition(event.latLng);

    // infoWindow.open(map);
    let latitude = parseFloat($('#latitude').val());
    let longitude = parseFloat($('#longitude').val());
    tipoPedidoId = parseInt($('input[name="Pedidodelivery[tipo_pedido_id]"]:checked').val());
    if (latitude && longitude || tipoPedidoId == 1) {
        defolutColor();
        this.setOptions({
            fillColor:"#ffff00"
        });
        getPrecioDelivery(this.zIndex);
    }else{
        
        if (tipoPedidoId != 1 ){
            addMarker(event.latLng);
        }
    }
}

function addMarker(latLng){
    if (marker) {
        marker.setMap(map);
        marker.setPosition(latLng);
    } else {
        map.center = latLng
        // var marker = new google.maps.Marker({
        marker = new google.maps.Marker({
            position: latLng,
            map: map,
            title: "Hello World!"
        });
    }
    $('#latitude').val(latLng.lat().toString());
    $('#longitude').val(latLng.lng().toString());
}

function clearCordinates(){
    $('#latitude').val('');
    $('#longitude').val('');
    if (marker) {
        marker.setMap(null);
    } 
}

function sendUrlMap(){
    let path = $('#path_create').val();
    let cliente_id = $('#pedidodelivery-cliente_id').val();
    let telefono = $('#pedidodelivery-telefono').val();
    let zona = $('#pedidodelivery-zona').val();
    let direccion = $('#pedidodelivery-direccion').val();
    let instrucciones = $('#pedidodelivery-instrucciones').val();
    let tipoPedido = $('input[name="Pedidodelivery[tipo_pedido_id]"]:checked').val();
    let hora = $('#pedidodelivery-hora_entrega').val();
    let sucrusal = $('#pedidodelivery-sucursal_delivery_id').val();

    let url = $('#pedidodelivery-url_mapa').val();
    let urlEnviar = "";
    urlEnviar += `${path}?`;

    if (url != '') {
        urlEnviar += `ur=%22${url}%22`;
    }
    if (cliente_id != '') {
        urlEnviar += `&cl=${cliente_id}`;
    }
    if (telefono != '') {
        urlEnviar += `&tl=${telefono}`;
    }
    if (zona != '') {
        urlEnviar += `&zn=${zona}`;
    }
    if (direccion != '') {
        urlEnviar += `&di=${direccion}`;
    }
    if (instrucciones != '') {
        urlEnviar += `&ins=${instrucciones}`;
    }
    if (tipoPedido != '') {
        urlEnviar += `&tip=${tipoPedido}`;
    }
    if (hora != '') {
        urlEnviar += `&hor=${hora}`;
    }
    if (sucrusal != '') {
        urlEnviar += `&suc=${sucrusal}`;
    }
    window.location.href = urlEnviar;


    // if (url != '' && cliente_id != ''){
    //     window.location.href = path+'?cl='+cliente_id+'&ur='+url;
    // } else if (url != ''){
    //     window.location.href = path + '?ur=%22' + url +'%22';
    // }
    // $('#a_set_url').
}

// class LatLng{
//     lat;
//     lng;
//     constructor(lat, lng){
//         this.lat = lat;
//         this.lng = lng;
//     }
// }

$(document).ready(function () {
    console.log('cargo create maps js');
    
    cordenadasPrecio();
});