package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    static final String DB_URL = "jdbc:mysql://localhost:3306/order_management_system";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "Ayush@123";
    static Connection connection;

    public static Connection getDBConn() {
        try {
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            return connection;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
