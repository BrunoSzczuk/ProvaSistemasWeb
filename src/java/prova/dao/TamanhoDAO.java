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
import prova.obj.Tamanho;

/**
 *
 * @author Bruno
 */
public class TamanhoDAO {

    public static void incluir(Tamanho tamanho) throws Exception {
        try{
            String sql = String.format("  insert into tamanho(descricao, sigla, qt_sabores) values(?) ");
            PreparedStatement pr = Conexao.getStatement(sql);
            pr.setString(1, tamanho.getDescricao());
            pr.setString(2, tamanho.getSigla());
            pr.setInt(3,tamanho.getQtSabores());
            pr.execute();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static List<Tamanho> listAll() throws Exception {
        List<Tamanho> result = new ArrayList<Tamanho>();
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select * from tamanho order by qt_sabores").executeQuery();
            while (rs.next()){
                result.add(new Tamanho(rs.getString("descricao"), rs.getString("sigla"), rs.getInt("qt_sabores")));
            }
        } catch (Exception e) {
             e.printStackTrace();
        }
        return result;
    }
    
    public static Tamanho buscar(String id){
        Tamanho result = null;
        try {
            ResultSet rs = Conexao.getConnect().prepareStatement("select * from tamanho where sigla = '"+id+"'").executeQuery();
            while (rs.next()){
                result = new Tamanho(rs.getString("descricao"), rs.getString("sigla"), rs.getInt("qt_sabores"));
            }
        } catch (Exception e) {
             e.printStackTrace();
        }
        return result;
    }

}
