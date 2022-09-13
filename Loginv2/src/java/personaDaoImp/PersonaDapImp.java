/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package personaDaoImp;

import Config.Conexion;
import com.mysql.jdbc.ResultSet;
import interfaces.RegistrarUsuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelo.Persona;

/**
 *
 * @author mateo
 */
public class PersonaDapImp implements RegistrarUsuario{
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public boolean add(Persona p) {
        String sql  = "INSERT INTO users (id, correo, password) VALUES (NULL, '"+p.getCorreo()+"', '"+p.getPass()+"')";
       
        try {
           
            con = cn.getConnection();
            ps= con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
        return false;
    }
    
}
