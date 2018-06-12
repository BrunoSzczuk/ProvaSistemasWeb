package prova.obj;


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
    private Tamanho tamanho;
    private List<Sabor> sabores;

    public Pizza() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Tamanho getTamanho() {
        return tamanho;
    }

    public void setTamanho(Tamanho tamanho) {
        this.tamanho = tamanho;
    }

    public List<Sabor> getSabores() {
        return sabores;
    }

    public void setSabores(List<Sabor> sabores) {
        this.sabores = sabores;
    }

    @Override
    public String toString() {
        return "Pizza "+ id + " - Tamanho " + tamanho + "\nSabores " + sabores;
    }
    
}