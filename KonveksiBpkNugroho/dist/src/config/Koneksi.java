/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author FADHAL
 */
public class Koneksi {
    private final static String URL = "jdbc:mysql://localhost/konveksi";
    private final static String USER = "root";
    private final static String PASS = "";
    public static Connection conn = null;
    
    public static void main (String args[])
    {
    //      cek koneksi dari hasil method getKoneksi()
        try{
            System.out.println("Koneksi Database "+getKoneksi().getCatalog()+" Berhasil!");
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }
    
//  koneksi ke server dan database    
    public static Connection getKoneksi()
    {   
        try{    
            conn = DriverManager.getConnection(URL, USER, PASS);
        }catch (SQLException e){
            System.out.println("Koneksi Database Gagal !" + e.getMessage());
        }
        return conn;
    }
//    public static Object getConnection() {
//        try{    
//            conn = DriverManager.getConnection(URL, USER, PASS);
//        }catch (SQLException e){
//            System.out.println("Koneksi Database Gagal !" + e.getMessage());
//        }
//        return conn;
//    }

}
