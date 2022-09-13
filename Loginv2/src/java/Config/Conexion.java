/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author mateo
 */
public class Conexion {
    private final String NAMEDB="";
    Connection con;

    public Connection getConnection() {
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/db_usuarios", "root", "");

        } catch (ClassNotFoundException | SQLException e) {
        }
        return con;
    }
}
