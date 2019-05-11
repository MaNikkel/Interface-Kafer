/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.DadosKafer;
import view.TelaKafer;

/**
 *
 * @author Mathias
 */
public class DadosDAO {
    public void create(DadosKafer dk){
        Connection con  = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
 
        try {
            //stmt = con.prepareStatement("INSERT INTO"+TelaKafer.tabela+"(erro, milis, kp, kd, ki)VALUES(?,?,?,?,?)");
//            stmt = con.prepareStatement("TRUNCATE TABLE pid");
//            stmt.executeUpdate();
//            stmt.close();
            
            String query = " insert into "+ TelaKafer.tabela +" (erro, millis, kp, kd, ki) values (?, ?, ?, ?, ?)";
            //String query = " insert into"+ TelaKafer.tabela +"(erro, millis, kp, kd, ki) values (?, ?, ?, ?, ?)";
            //String query = " insert into pid (ki) values (?)";
            stmt = con.prepareStatement(query);
            
            //stmt = con.prepareStatement("INSERT INTO pid (erro) VALUES (?) ");
            stmt.setString(1, dk.getErro());
            stmt.setString(2, dk.getMillis());
            stmt.setString(3, dk.getKp());
            stmt.setString(4, dk.getKd());
            stmt.setString(5, dk.getKi());
            stmt.executeUpdate();
 //           stmt.execute();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(DadosDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            connection.ConnectionFactory.closeConnection(con, stmt);
        }
    }
    
    public void del(){
        Connection con  = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        try {
            String query = "TRUNCATE TABLE " + TelaKafer.tabela + "";
            stmt = con.prepareStatement(query);
            stmt.execute();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(DadosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            connection.ConnectionFactory.closeConnection(con, stmt);
        }
        
    }
            
    
    public List<DadosKafer> ler(){
        Connection con  = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        List<DadosKafer> dadosLeitura = new ArrayList();
        try {
            //stmt = con.prepareStatement("SELECT * FROM" + TelaKafer.tabela);
            String query = "SELECT * FROM " + TelaKafer.tabela + "";
            stmt = con.prepareStatement(query);
            rs = stmt.executeQuery();
            while(rs.next()){
                DadosKafer dk = new DadosKafer();
                dk.setErro(rs.getString("erro"));
                dk.setKd(rs.getString("kd"));
                dk.setKi(rs.getString("ki"));
                dk.setKp(rs.getString("kp"));
                dk.setMillis(rs.getString("millis"));
                dadosLeitura.add(dk);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DadosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        
        
        
        return dadosLeitura;
    }
    public static void main(String[] args) {
        DadosKafer dt = new DadosKafer();
        dt.setErro("200");
        dt.setKd("200");
        dt.setKi("200");
        dt.setKp("200");
        dt.setMillis("1000");
        DadosDAO dd = new DadosDAO();
        dd.create(dt);
    }
    
}
