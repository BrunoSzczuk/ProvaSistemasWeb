/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prova.dao;

import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import prova.obj.Pizza;

/**
 *
 * @author Bruno
 */
public class PizzaDAO {

    public void incluir(Pizza p) throws Exception {
        String sql = String.format(" insert into pizza () ");
        PreparedStatement stm = Conexao.getStatement(sql); //Banco Postgre
    }
}
