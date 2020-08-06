function verificarRol(){
    console.log('cambiando estado');
    
    let rol = $('#signup-rol').val();
    console.log(rol);
    
    if (rol == 'sucursal'){
        $('#show_sucursal').css('display', 'block');
    }else{
        $('#show_sucursal').css('display', 'none');
    }
}