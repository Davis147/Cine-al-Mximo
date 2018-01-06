function validar(){
    var nombre, apellido, edad, telefono, nick, contrasena;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    edad = document.getElementById("edad").value;
    telefono = document.getElementById("telefono").value;
    nick = document.getElementById("nick").value;
    contrasena = document.getElementById("contrasena").value;

    if(nombre === "" || apellido === "" || edad === "" || telefono === "" || nick === "" || contrasena === ""){
        alert("Todos los campos son obligatorios");
        return false;
    }
    else if(nombre.length>30){
        alert("El nombre es muy largo");
        return false;
    }
    else if(nombre.length>30){
        alert("El apellido es muy largo");
        return false;
    }
    else if(isNaN(telefono)){
        alert("El telefono ingresado no es un numero");
        return false;
    }
}