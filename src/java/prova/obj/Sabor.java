package prova.obj;

import prova.Util;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bruno.szczuk
 */
public class Sabor{
    private String sabor;

    public Sabor() {
    }

    public Sabor(String sabor) {
        this.sabor = sabor;
    }
    

    public String getSabor() {
        return sabor;
    }

    public void setSabor(String sabor) {
        this.sabor = Util.toCamelCase(sabor.trim());
    }

    @Override
    public String toString() {
        return sabor + " \n";
    }
    
}
