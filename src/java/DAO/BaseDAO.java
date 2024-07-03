package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class BaseDAO {

     String url = "jdbc:sqlserver://\\MYSQL2019:1433;databaseName=Web_banDienThoai;encrypt=false";
    private String className = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private String username = "sa";
    private String password = "123123";

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(className);
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println(e);
        }
        return conn;
    }

    public static void main(String[] args) {
        try {
            BaseDAO dbcontext = new BaseDAO();
            if (dbcontext.getConnection() != null) {
                System.out.println("connect successfully");
            } else {
                System.out.println("not connect");
            }
        } catch (Exception e) {
        }
    }
}