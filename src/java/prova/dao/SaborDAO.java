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
import prova.obj.Sabor;

/**
 *
 * @author Bruno
 */
public class SaborDAO {

    public static void incluir(Sabor sabor) throws Exception {
        String sql = String.format("  insert into sabor(nome) values(?) ");
        PreparedStatement pr = Conexao.getStatement(sql);
        pr.setString(1, sabor.getSabor());
        pr.execute();
    }

    public static List<Sabor> listAll() throws Exception {
        List<Sabor> result = new ArrayList<Sabor>();
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select * from sabor").executeQuery();
            while (rs.next()) {
                result.add(new Sabor(rs.getString("nome")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Sabor buscar(String id) {
        Sabor result = null;
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select * from sabor where nome = '" + id + "'").executeQuery();
            while (rs.next()) {
                result = new Sabor(rs.getString("nome"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static List<Sabor> buscarByPizza(int pizza) {
        List<Sabor> result = new ArrayList<>();
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select sabor from pizza where id = '" + pizza + "'").executeQuery();
            while (rs.next()) {
                result.add(new Sabor(rs.getString("sabor")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
