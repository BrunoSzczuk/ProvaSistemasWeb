package prova;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bruno.szczuk
 */
public class Sabores {
    private String sabor;

    public Sabores() {
    }

    public Sabores(String sabor) {
        this.sabor = sabor;
    }
    

    public String getSabor() {
        return sabor;
    }

    public void setSabor(String sabor) {
        this.sabor = sabor;
    }

    @Override
    public String toString() {
        return sabor + " \n";
    }
    
}