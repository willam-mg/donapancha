
function addCord(){
    try {
        let lat = $('#lat').val();
        let lng = $('#lng').val();

        if (lat == "" && lng == ""){
            throw new Error('Las entradas no pueden estar vacias');
        }

        let arLat = $('input[name="lats[]"]');
        let arLng = $('input[name="lngs[]"]');
        let existsLat = false;
        let existsLng = false;
        arLat.map((index, item)=>{
            if (item.value == lat) {
                existsLat = true;
            }
        })
        arLng.map((index, item)=>{
            if (item.value == lng){
                existsLng = true;
            }
        });


        // if (!existsLat || !existsLng){   
        $('#table_cords tbody').append(`<tr>
            <td>
                <input type="hidden" name="lngs[]" value="${lng}">
                ${lng}
            </td>
            <td>
                <input type="hidden" name="lats[]" value="${lat}">
                ${lat}
            </td>
            <td>
                <a href="#" class="text-danger" onclick="eliminar(this)">
                    <i class="material-icons">delete</i>
                </a>
            </td>
        </tr>`);
        $('#lat').val('');
        $('#lng').val('');
        // }
    } catch (error) {
        console.log(error);
    }

}

function eliminar(element){
    $(element).closest('tr').remove();

}

let path = $('#base-ruta').val();
$("#btn-dialog").on("click", function () {
    // krajeeDialogCust.alert(`
    alert(`
        <p>
            <b>PASO 1</b>
            Abrir el enlace Geojson y seleccionar la herramienta poligono. <br/>
            <a href="https://geojson.io/#map=12/-17.4262/-66.1641" target="blank">Geojson io</a>
            <img src="${path}paso1.png" width="100%">
        </p>
        <p>
            <b>PASO 2</b>
            Dibujar el area para el precio delivery en el mapa, es importante cerrar el area. <br/>
            <img src="${path}paso2.png" width="100%">
        </p>
        <p>
            <b>PASO 3</b>
            Copiar todos los valores de longitud y latitud al formulario una cordenada a la vez. <br/>
            <img src="${path}paso3.png" width="100%">
        </p>`
    );
});

console.log('cargsdo js');