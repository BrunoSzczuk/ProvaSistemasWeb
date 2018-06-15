/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package prova.obj;

import java.io.Serializable;
import prova.Util;

/**
 *
 * @author Bruno
 */
public class Tamanho implements Serializable{
    String descricao;
    String sigla;
    int qtSabores;

    public Tamanho(String descricao, String sigla, int qtSabores) {
        this.descricao = descricao.trim();
        this.sigla = sigla.trim();
        this.qtSabores = qtSabores;
    }

    public int getQtSabores() {
        return qtSabores;
    }

    public void setQtSabores(int qtSabores) {
        this.qtSabores = qtSabores;
    }

    public Tamanho(String descricao, String sigla) {
        this.descricao = descricao.trim();
        this.sigla = sigla.trim();
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla.trim();
    }
    public Tamanho(String descricao) {
        this.descricao = descricao.trim();
    }

    public Tamanho() {
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = Util.toCamelCase(descricao.trim());
    }

    @Override
    public String toString() {
        return "Tamanho{" + "descricao=" + descricao + ", sigla=" + sigla + ", qtSabores=" + qtSabores + '}';
    }
    
    
}
