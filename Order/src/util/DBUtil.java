package util;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {
    static final String DB_URL = "jdbc:mysql://localhost:3306/order_management_system";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "Ayush@123";
    static Connection connection;

    public static Connection getDBConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String filePath = "C:/Users/ayush/Desktop/JDBC/Order/src/db.properties";
            FileInputStream fis = new FileInputStream(filePath);
            Properties properties = new Properties(); 
            properties.load(fis);
            String url = properties.getProperty("url");
	        String username = properties.getProperty("username");
	        String password = properties.getProperty("password");

	        connection = DriverManager.getConnection(url, username, password);
            return connection;
        } catch (ClassNotFoundException | IOException | SQLException e) {
            e.printStackTrace();
        }
        return null;
        
        // try {
        //     connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        //     return connection;
        // } catch (SQLException e) {
        //     e.printStackTrace();
        // }
        // return null;
    }

}
