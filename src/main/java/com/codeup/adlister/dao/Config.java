package com.codeup.adlister.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Config {

   public static String getUrl() {
        return "jbdc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }

   public static String getUsername() { return "root";}

   public static String getPassword() { return "codeup";}


    public static void main(String[] args) {

    Config config = new Config();

       try {
                Connection connnection = DriverManager.getConnection(

                        config.getUrl(),
                        config.getUsername(),
                        config.getPassword()
                );

            } catch (SQLException e) {
                System.out.println(e.getLocalizedMessage());
            }
        }


}
