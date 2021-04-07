var serial = 1;
var valid = false;
subtotal = [];

var url_nuevo = $("#new_cliente").attr('href');

function onTapMapa(){
    $("#pedidodelivery-url_mapa").val('');
}


function addToTable(producto, cantidad) {
    if ( existProductoInDetail(producto.id) == false ){
        subtotal[producto.id] = (cantidad * producto.costo);
        var fila = '<tr class="selected" id="fila' + producto.id + '">\
            <td>\
                <input type="hidden" name="idarticulo[]"  value="' + producto.id + '">' + serial + '\
            </td>\
            <td>\
                <span>' + producto.producto + '</span>\
            </td>\
            <td>\
                <span>' + producto.tipo + '</span>\
            </td>\
            <td> \
                <input  class="txt-cantidad" type="hidden" name="cantidad[]"  value="' + cantidad + '">\
                <span class="span-cantidad">' + cantidad + '</span>\
            </td>\
            <td>\
                <input class="txt-costo" type="hidden" name="precio_venta[]"  value="' + producto.costo + '">' + producto.costo + '\
            </td>\
            <td class="txt-subtotal">\
                <span class="span-subtotal">' + subtotal + '</span>\
            </td>\
            <td>\
                <button type="button" class="btn btn-round btn-just-icon btn-danger" onclick="eliminar(' + producto.id + ');">\
                    <i class="material-icons">clear</i>\
                </button>\
            </td>\
        </tr>';
        serial++;
        $('#detalles tbody').append(fila);
        calcularTotal();
    }
}



function eliminar(index) {
    if (confirm('Quitar producto?')) {
        $('#fila' + index).remove();
        calcularTotal();
    }
    // krajeeDialogCust.confirm("Quitar producto?", function (result) {
    // });
}



//    $("#w0").submit(function (e) {
//        if (!valid) {
//            e.preventDefault();
//        }
//    });

//     function enviarFormulario(){
//         if( window.confirm("��� Desea realizar la venta ?") ){
//             valid = true;
//             $("#w0").submit();
//         }else{
//             valid = false;
//         }
//     }

function agregar(){
    var idProducto = $("#pedidodelivery-producto_id").val();
    var cantidad = $("#pedidodelivery-cantidad").val();
    $.ajax({
        beforeSend: function (xhr) {
            $("#loading").css("display", "block");
        },
        complete: function (jqXHR, textStatus) {
            $("#loading").css("display", "none");
        },
        success: function (data) {
            if (data.status != false){
                addToTable(data.data, cantidad);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "403") {
                location.reload();
            }
        },
        type: 'GET',
        dataType: "JSON",
        url: "/pedidodelivery/get-producto?id=" + idProducto,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: null,
    });
}



/**
* Verifica si el prodycto ya ha s
* ido agregado e el detalle
*
* @param int id
* @returns
*/
function existProductoInDetail(id) {
    var res = false;
    $('input[name="idarticulo[]"]').each(function (index, item) {
        if (item.value == id) {
            var cantidad = parseInt($(item).closest('tr').find('.txt-cantidad').eq(0).val());
            var costo = parseInt($(item).closest('tr').find('.txt-costo').eq(0).val());
            if ( $("#pedidodelivery-cantidad").val() != "" ){
                cantidad += parseInt($("#pedidodelivery-cantidad").val()); 
            }else{
                cantidad++;
            }
            // actualizando la cantidad
            $(item).closest('tr').find('.txt-cantidad').eq(0).val(cantidad);
            $(item).closest('tr').find('.span-cantidad').html(cantidad);
            // actualizando el subtotal
            subtotal[id] = (cantidad * costo);
            total = total + subtotal[id];
            $(item).closest('tr').find('.span-subtotal').html(subtotal[id]);
            calcularTotal();

            res = true;
        }
    });
    return res;
}

function calcularTotal(){
    let total = 0;
    $('input[name="idarticulo[]"]').each(function (index, item) {
        let id = item.value;
        var cantidad = parseFloat($(item).closest('tr').find('.txt-cantidad').eq(0).val());
        var costo = parseFloat($(item).closest('tr').find('.txt-costo').eq(0).val());
        subtotal[id] = (cantidad * costo);
        total = total + subtotal[id];
        $(item).closest('tr').find('.span-subtotal').html(subtotal[id]);
    });
    $('#total').html(total + "Bs");


    // clacular total mas el precio delivery
    let precioPedido = $("#precio_pedido_valor").val();
    let res = "";
    console.log(precioPedido, total, res);
    res = parseFloat(precioPedido) + parseFloat(total);
    $("#total_mas_delivery").html(res + " Bs");



    return total;
}


function infoCliente() {
    var idcliente = $("#pedidodelivery-cliente_id").val();
    $.ajax({
        beforeSend: function (xhr) {
            $("#loading").css("display", "block");
        },
        complete: function (jqXHR, textStatus) {
            $("#loading").css("display", "none");
        },
        success: function (data) {
            if (data.status != false) {
                $("#pedidodelivery-telefono").val(data.cliente.telefono);
                $("#pedidodelivery-direccion").val(data.cliente.direccion);
                $("#pedidodelivery-zona").val(data.cliente.zona);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status == "403") {
                location.reload();
            }
        },
        type: 'GET',
        dataType: "JSON",
        url: "/pedidodelivery/get-cliente?id=" + idcliente,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: null,
    });
}

function mostrarMapa(ti = null){
    let tval = $('input[name="Pedidodelivery[tipo_pedido_id]"]:checked').val();
    let tipo = ti;
    if(tval){
        tipo = tval;
    }
    if (tipo == 1){
        clearCordinates();
        $('#showSucursal').css('display', 'block');
        $('#showHora').css('display', 'block');
        $('#showMapa').css('display', 'none');
    }
    if (tipo == 2){
        $('#showSucursal').css('display', 'none');
        $('#showHora').css('display', 'none');
        $('#showMapa').css('display', 'block');
    }
    if (tipo == 3){
        $('#showSucursal').css('display', 'none');
        $('#showHora').css('display', 'block');
        $('#showMapa').css('display', 'block');
    }
}   

$('#pedidodelivery-tipo-pedido-id--0').on('click', function(){
    // console.log($('input[name="Pedidodelivery[tipo_pedido_id]"]:checked').val());
    mostrarMapa(1);
});
$('#pedidodelivery-tipo-pedido-id--1').on('click', function(){
    mostrarMapa(2);
});
$('#pedidodelivery-tipo-pedido-id--2').on('click', function(){
    // console.log($('input[name="Pedidodelivery[tipo_pedido_id]"]:checked').val());
    mostrarMapa(3);
});


$(document).ready(function () {
  calcularTotal();
  mostrarMapa();
});