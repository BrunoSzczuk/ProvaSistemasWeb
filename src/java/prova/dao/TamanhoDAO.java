/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prova.dao;

import java.sql.PreparedStatement;
import prova.obj.Tamanho;

/**
 *
 * @author Bruno
 */
public class TamanhoDAO {

    public static void incluir(Tamanho tamanho) throws Exception {
        String sql = String.format("  insert into tamanho(descricao) values(?) ");
        PreparedStatement pr = Conexao.getConnect().prepareStatement(sql);
        pr.setString(1, tamanho.getDescricao());
        pr.execute();
    }

}
