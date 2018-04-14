package prova;


import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bruno.szczuk
 */
public class Pizza {
    private int id;
    private String tamanho;
    private List<Sabores> sabores;

    public Pizza() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public List<Sabores> getSabores() {
        return sabores;
    }

    public void setSabores(List<Sabores> sabores) {
        this.sabores = sabores;
    }

    @Override
    public String toString() {
        return "Pizza "+ id + " - Tamanho " + tamanho + "\nSabores " + sabores;
    }
    
}
