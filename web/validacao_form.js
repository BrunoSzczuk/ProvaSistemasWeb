var contador, tipos_selecionados = 0, erro_encontrado = false, tamanho_maximo = 0;
function validarCampoTamanho() {
    for (contador = 0; contador <= 4; contador++) {
        document.main.sabores[contador].disabled = false;
        document.main.sabores[contador].checked = false;
    }
    document.getElementById("msg_erro").innerHTML = "";
    if (document.main.tamanho.selectedIndex < 1) {
        document.getElementById("msg_erro").innerHTML = "Informe o Tamanho";
    }
    if (document.main.tamanho[0].checked) {
        tamanho_maximo = 2;
    } else if (document.main.tamanho[1].checked) {
        tamanho_maximo = 3;
    } else {
        tamanho_maximo = 4;
    }
    for (contador = 0; contador <= 4; contador++) {
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
    for (contador = 0; contador <= 4; contador++) {
        if (document.main.sabores[contador].checked) {
            tipos_selecionados += 1;
        }
    }
    if (tipos_selecionados === tamanho_maximo) {
        for (contador = 0; contador <= 4; contador++) {
            if (!document.main.sabores[contador].checked) {
                document.main.sabores[contador].disabled = true;
            }
        }
    }
}
