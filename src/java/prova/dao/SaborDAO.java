/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package prova.dao;

import java.sql.PreparedStatement;
import prova.obj.Sabor;

/**
 *
 * @author Bruno
 */
public class SaborDAO {
    
    public static void incluir(Sabor sabor) throws Exception{
        String sql = String.format("  insert into sabor(nome) values(?) ");
        PreparedStatement pr =  Conexao.getConnect().prepareStatement(sql);
        pr.setString(1, sabor.getSabor());
        pr.execute();
    }
}
