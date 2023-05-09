

//import java.sql.*;
//import com.mysql.cj.jdbc.Driver;
//
//class Config {
//    public String getUrl() {
//        return "jdbc:mysql://localhost:3306/adlister_db?allowPublicKeyRetrieval=true&useSSL=false";
//    }
//
//    public String getUsername() {
//        return "root";
//    }
//
//    public String getPassword() {
//        return "codeup";
//    }
//}
//
//class MySqlConnectionManager {
//    private static Config config = new Config();
//    private static Connection connection;
//
//    public static Connection getConnection() throws SQLException {
//        if (connection == null || connection.isClosed()) {
//            DriverManager.registerDriver(new Driver());
//            connection = DriverManager.getConnection(
//                    config.getUrl(),
//                    config.getUsername(),
//                    config.getPassword()
//            );
//        }
//        return connection;
//    }
//}
//
//class Main {
//    public static void main(String[] args) {
//        try {
//            Connection connection = MySqlConnectionManager.getConnection();
//            System.out.println("Connected to database!");
//        } catch (SQLException e) {
//            System.out.println("Failed to connect to database");
//            e.printStackTrace();
//        }
//    }
//}

class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false";
    }
    public String getUser() {
        return "root";
    }
    public String getPassword() {
        return "codeup";
    }
}