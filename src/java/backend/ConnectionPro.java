package backend;

import java.sql.*;

public class ConnectionPro {

    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/app?allowPublicKeyRetrieval=true&autoReconnect=true&useSSL=false", "root", "1205");
            System.out.println("Connected !!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    private static Connection con2;

    public static Connection getConnection2() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/app?allowPublicKeyRetrieval=true&autoReconnect=true&useSSL=false", "root", "1205");
            System.out.println("Connected !!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con2;
    }
    
    public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
        //Creating Resultset object
        ResultSet rs = null;
        try {
            //Checking whether the connection is null or null
            if (con == null) {
                getConnection();
            }
            //Querying the query
            rs = con.createStatement().executeQuery(SqlQueryString);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return rs;
}

    static int insertUpdateFromSqlQuery(String SqlQueryString) {
        int i = 2;
        try {
            //Checking whether the connection is null or null
            if (con == null) {
                getConnection();
            }
            //Querying the query
            i = con.createStatement().executeUpdate(SqlQueryString);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return i;
    }
}
