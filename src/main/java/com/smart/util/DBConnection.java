package com.smart.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            con = DriverManager.getConnection(
                    "jdbc:oracle:thin:@GOWTHAMBALAJI:1521:orclroo",
                    "SMART_USER",
                    "smart123"
            );

            System.out.println("DB CONNECTION SUCCESS");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
