// let preciosDelivery = [];
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
            $('#precio_pedido').val(data.precio);
            // calcularSubtotal();
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(errorThrown);
            if (jqXHR.status == "403") {
                // location.reload();
                console.log(errorThrown);
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
    let position = new google.maps.LatLng(latitude, longitude)
    map = new google.maps.Map(document.getElementById("map"), {
        zoom: 12,
        // center: { lat: 24.886, lng: -70.268 },
        center: { lat: latitude, lng: longitude},
        mapTypeId: "terrain"
    });

    addMarker(position);

    // Define the LatLng coordinates for the polygon.
    var triangleCoords = [
        { lat: 25.774, lng: -80.19 },
        { lat: 18.466, lng: -66.118 },
        { lat: 32.321, lng: -64.757 }
    ];
    
    preciosDelivery.forEach((item, i)=>{
        // Construct the polygon.
        // console.log('creando poligono', item);
        if (item.estado == 'Activo') {
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
        }
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





    // map.addListener('click', function (mapsMouseEvent) {
    //     // let latLng = new LatLng();
    //     $('#precio_delivery_id').val('');
    //     $('#precio_pedido').val(0);
    //     // calcularSubtotal();
    //     addMarker(mapsMouseEvent.latLng);
    //     // // Close the current InfoWindow.
    //     // infoWindow.close();

    //     // // Create a new InfoWindow.
    //     // infoWindow = new google.maps.InfoWindow({ position: mapsMouseEvent.latLng });
    //     // infoWindow.setContent(mapsMouseEvent.latLng.toString());
    //     // infoWindow.open(map);
    // });
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
    defolutColor();
    this.setOptions({
        fillColor:"#ffff00"
    });
    getPrecioDelivery(this.zIndex);
    // addMarker(event.latLng);
}

function addMarker(latLng){
    if (marker) {
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
    $('#pedidodelivery_latitude').val(latLng.lat().toString());
    $('#pedidodelivery_longitude').val(latLng.lng().toString());
}

class LatLng{
    lat;
    lng;
    constructor(lat, lng){
        this.lat = lat;
        this.lng = lng;
    }
}

$(document).ready(function () {
    console.log('cargo maps js');
    
    // cordenadasPrecio();
    initMap();
});