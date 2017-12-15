var urlWS = "";
$(document).ready(function(){
   urlWS = "http://cinealmaximo.byethost16.com/server";
});



function borrar(){
    id = document.getElementById("id").value;
    urltorequest = urlWS +"genero/borrar?id="+id;
    $.ajax({
        type: "get",
        url: urltorequest,
        async:false,
        success:  function (respuesta) {
            if(respuesta=="false"){
                alert("Error al borrar el registro " + id + ".");
            }else{
                alert("Registro borrado: " + id + ".");
            }
        }
    });
    leer();
}

function crear(){
    id = document.getElementById("id").value;
    descripcion = document.getElementById("descripcion").value;
    urltorequest = urlWS +"genero/crear";
    $.ajax({
        type: "post",
        url: urltorequest,
        data:JSON.stringify({id: id, descripcion: descripcion}),
        async:false,
        success:  function (respuesta) {
            if(respuesta=="false"){
                alert("Error al crear el registro");
            }else{
                alert("Registro creado.");
            }
        }
    });
    leer();
}

function actualizar(){
    id = document.getElementById("id").value;
    descripcion = document.getElementById("descripcion").value;
    urltorequest = urlWS +"genero/actualizar";
    $.ajax({
        type: "post",
        url: urltorequest,
        data:JSON.stringify({id: id, descripcion: descripcion}),
        async:false,
        success:  function (respuesta) {
            if(respuesta=="false"){
                swal("Error al actualizar el registro");
            }else{
                swal("Registro actualizado.");
            }
        }
    });
    leer();
}