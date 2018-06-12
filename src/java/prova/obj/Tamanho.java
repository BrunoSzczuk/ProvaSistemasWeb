/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package prova.obj;

import java.io.Serializable;

/**
 *
 * @author Bruno
 */
public class Tamanho implements Serializable{
    String descricao;

    public Tamanho(String descricao) {
        this.descricao = descricao;
    }

    public Tamanho() {
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}
