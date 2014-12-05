/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxdac.dao;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.MessageFormat;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import static pe.edu.upc.evolucion.cinemaxdac.util.UtilCore.obtenerPropiedad;
/**
 *
 * @author Victor Moran
 */
public class Conexion {
    
     protected Connection cn = null;
    protected PreparedStatement pr = null;
    protected CallableStatement cl = null;
    protected ResultSet rs = null;

    protected Connection obtenerConexion() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/mydb";
        return (DriverManager.getConnection(url,"root", "root"));
        
    }

    protected void cerrar(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void cerrar(ResultSet resultSet) {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void cerrar(CallableStatement callableStatement) {
        try {
            if (callableStatement != null) {
                callableStatement.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void rollback(Connection cn) {
        try {
            if (cn != null) {
                cn.rollback();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
