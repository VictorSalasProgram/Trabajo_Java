
function mostrarAlerta(){
    alert("Comprar tickets pronto");
};
function alertaOrador(){
    alert("Pronto podras ser orador");
};
function alertaFormulario(){
    alert("Formulario enviado, muchas gracias: " + document.getElementById("exampleFormControlInput2").value);
};

function borrarCampos(){
    
    document.getElementById("inputNombre").value = "";
    document.getElementById("inputApellido").value = "";
    document.getElementById("inputEmail").value = "";
    document.getElementById("inputCantidad").value = "";
    document.getElementById("inputTotal").value = "";
    



};

function calcularResumen(){
    
        let cantidad= parseInt(document.getElementById("inputCantidad").value);
        let categoria = document.getElementById("inputCategoria").value; 
        let valor = 200;
        let totalPagar;

        switch (parseInt(document.getElementById("inputCategoria").value)){
            case 1:
                totalPagar = (cantidad*valor)-(cantidad*valor*80/100);
                break;
            case 2:
                totalPagar = (cantidad*valor)-(cantidad*valor*50/100);
                break;
            case 3:
                totalPagar = (cantidad*valor)-(cantidad*valor*15/100);
                break;
            }
            return totalPagar;

        // if (categoria == 1){
        //     totalPagar = (cantidad*valor)-(cantidad*valor*80/100);
        // } else if ( categoria == 2){
        //     totalPagar = (cantidad*valor)- (cantidad*valor*50/100);
        // } else {
        //     totalPagar = (cantidad*valor)- (cantidad*valor*15/100);
        // }
        // return totalPagar
};

function mostrarResumen(){
    let totalPagar = calcularResumen();
    document.getElementById("inputTotal").value = "Total a pagar: " + totalPagar;
};






document.getElementById("botoncomprar2").onclick = mostrarAlerta ;
document.getElementById("botonorador").onclick = alertaOrador ;
document.getElementById("botondeenviar").onclick = alertaFormulario ;



