var contador, tipos_selecionados = 0, erro_encontrado = false, tamanho_maximo = 0;
function validarCampoTamanho() {
    for (contador = 0; contador < document.main.sabores.length; contador++) {
        document.main.sabores[contador].disabled = false;
        document.main.sabores[contador].checked = false;
    }
    document.getElementById("msg_erro").innerHTML = "";
    if (document.main.tamanho.selectedIndex < 1) {
        document.getElementById("msg_erro").innerHTML = "Informe o Tamanho";
    }
    for (contador = 0; contador < document.main.tamanho.length; contador++) {
        if (document.main.tamanho[contador].checked){
          tamanho_maximo = parseInt(document.main.tamanho[contador].max);
        }
    }
    
    for (contador = 0; contador < tamanho_maximo; contador++) {
        if (document.main.sabores[contador].checked) {
            tipos_selecionados += 1;
        }
        if (tipos_selecionados > tamanho_maximo) {
            document.getElementById("msg_erro").innerHTML = "A quantidade de sabores é maior que a permitida";
        }
    }

    if (!tipos_selecionados) {
        document.getElementById("msg_erro").innerHTML = "Selecione pelo menos um sabor de pizza";
        erro_encontrado = true;
    }
}

function validaSabores() {
    document.getElementById("msg_erro").innerHTML = "";
    tipos_selecionados = 0;
    for (contador = 0; contador < document.main.sabores.length   ; contador++) {
        if (document.main.sabores[contador].checked) {
            tipos_selecionados += 1;
        }
    }

    for (contador = 0; contador < document.main.sabores.length; contador++) {
        if (!document.main.sabores[contador].checked) {
            document.main.sabores[contador].disabled = tipos_selecionados === tamanho_maximo;
        }
    }

}
