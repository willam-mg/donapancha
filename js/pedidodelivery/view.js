function copiar(id_elemento) {
    var aux = document.createElement("input");
    console.log(document.getElementById(id_elemento).value);
    aux.setAttribute("value", document.getElementById(id_elemento).value);
    document.body.appendChild(aux);
    aux.select();
    document.execCommand("copy");
    document.body.removeChild(aux);

    alert('copiado');
}