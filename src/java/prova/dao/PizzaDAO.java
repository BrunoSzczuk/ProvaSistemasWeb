/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prova.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import prova.obj.Pizza;
import prova.obj.Sabor;

/**
 *
 * @author Bruno
 */
public class PizzaDAO {

    public static void incluir(Pizza p) throws Exception {
        String insert = String.format(" insert into pizza (id, tamanho, sabor) values (?,?,?)");
        int id = 0;
        ResultSet rs = Conexao.getStatement().executeQuery("select coalesce(max(id),0)+1 as id from pizza");
        if (rs.next()) {
            id = rs.getInt("id");
        }
        PreparedStatement pr = Conexao.getStatement(insert);
        for (Sabor s : p.getSabores()) {
            pr.setInt(1, id);
            pr.setString(2, p.getTamanho().getSigla());
            pr.setString(3, s.getSabor());
            pr.execute();
        }
    }

    public static List<Pizza> listAll() {

        List<Pizza> result = new ArrayList<Pizza>();
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select distinct id,tamanho from pizza order by id").executeQuery();
            while (rs.next()) {
                result.add(new Pizza(rs.getInt("id"), TamanhoDAO.buscar(rs.getString("tamanho")), SaborDAO.buscarByPizza(rs.getInt("id"))));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }
}
