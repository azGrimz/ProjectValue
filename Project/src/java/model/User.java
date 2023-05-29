
package model;

import java.sql.*;
import java.util.ArrayList;
import api.APIServelet;

public class User {
    private long rowId;
    private String name;
    private String login;
    private String avatar;
    private String passwordHash;
    private int monthly_budget;
    private int days_per_week;
    private int hours_per_day;
    private int vacation_per_year;
    private int value_hour;

    public static String getCreateStatement() {
        return "CREATE TABLE users ("
                + "login VARCHAR(50) NOT NULL,"
                + "password_hash VARCHAR NOT NULL,"
                + "name VARCHAR(50) NOT NULL,"
                + "avatar VARCHAR(50),"
                + "monthly_budget INT,"
                + "days_per_week INT,"
                + "hours_per_day INT,"
                + "vacation_per_year INT,"
                + "value_hour INT"
                + ")";
    }
/*
    public static ArrayList<User> getUsers() throws Exception{
        ArrayList<User> list = new ArrayList<>();
        Connection con = APIServelet.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT rowid, * from users");
        while(rs.next()){
            long rowId = rs.getLong("rowid");
            String login = rs.getString("login");
            String name = rs.getString("name");
            String avatar = rs.getString("avatar");
            int monthly_budget = rs.getInt("monthly_budget");
            int days_per_week = rs.getInt("days_per_week");
            int hours_per_day = rs.getInt("hours_per_day");
            int vacation_per_year = rs.getInt("vacation_per_year");
            int value_hour = rs.getInt("value_hour");
            String passwordHash = rs.getString("password_hash");
            list.add(new User(rowId, login, name, avatar, monthly_budget, days_per_week, hours_per_day, vacation_per_year, value_hour, passwordHash));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static User getUser(String login, String password) throws Exception{
        User user = null;
        Connection con = AppListener.getConnection();
        String sql = "SELECT rowid, * from users WHERE login=? AND password_hash=?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, login);
        stmt.setString(2, AppListener.getMd5Hash(password));
        ResultSet rs = stmt.executeQuery();
        if(rs.next()){
            long rowId = rs.getLong("rowid");
            String name = rs.getString("name");
            String avatar = rs.getString("avatar");
            int monthly_budget = rs.getInt("monthly_budget");
            int days_per_week = rs.getInt("days_per_week");
            int hours_per_day = rs.getInt("hours_per_day");
            int vacation_per_year = rs.getInt("vacation_per_year");
            int value_hour = rs.getInt("value_hour");
            String passwordHash = rs.getString("password_hash");
            user = new User(rowId, login, name, avatar, monthly_budget, days_per_week, hours_per_day, vacation_per_year, value_hour, passwordHash);
        }
        rs.close();
        stmt.close();
        con.close();
        return user;
    }
    
    public static void insertUser(String login, String name, String avatar, int monthly_budget, int days_per_week, 
                                    int hours_per_day, int vacation_per_year, int value_hour, String password) throws Exception{
        Connection con = AppListener.getConnection();
        String sql = "INSERT INTO users(login, name, avatar, monthly_budget, days_per_week, hours_per_day, vacation_per_year, value_hour ,password_hash) "
                + "VALUES(?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, login);
        stmt.setString(2, name);
        stmt.setString(3, avatar);
        stm.setInt(4, monthly_budget);
        stm.setInt(5, days_per_week);
        stm.setInt(6, hours_per_day);
        stm.setInt(7, vacation_per_year);
        stm.setInt(8, value_hour);
        stmt.setString(9, AppListener.getMd5Hash(password));
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    public static void updateUser(String login, String name, String avatar, int monthly_budget, int days_per_week, 
                                    int hours_per_day, int vacation_per_year, int value_hour, String password) throws Exception{
        Connection con = AppListener.getConnection();
        String sql = "UPDATE users SET name=?, avatar=?, monthly_budget=?, days_per_week=?, hours_per_day=?, vacation_per_year=?, value_hour=?, password_hash=? WHERE login=?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, name);
        stmt.setString(2, avatar);
        stm.setInt(3, monthly_budget);
        stm.setInt(4, days_per_week);
        stm.setInt(5, hours_per_day);
        stm.setInt(6, vacation_per_year);
        stm.setInt(7, value_hour);
        stmt.setString(8, AppListener.getMd5Hash(password));
        stmt.setString(9, login);
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    public static void deleteUser(long rowId) throws Exception{
        Connection con = AppListener.getConnection();
        String sql = "DELETE FROM users WHERE rowid = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setLong(1, rowId);
        stmt.execute();
        stmt.close();
        con.close();
    }
    
    public static void changePassword(String login, String password) throws Exception{
        Connection con = AppListener.getConnection();
        String sql = "UPDATE users SET password_hash = ? WHERE login = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, AppListener.getMd5Hash(password));
        stmt.setString(2, login);
        stmt.execute();
        stmt.close();
        con.close();
    }

    public User(long rowId, String name, String login, String avatar, String passwordHash, 
                int monthly_budget, int days_per_week, int hours_per_day, int vacation_per_year, int value_hour) {
        this.rowId = rowId;
        this.login = login;
        this.name = name;
        this.avatar = avatar;
        this.monthly_budget = monthly_budget;
        this.days_per_week = days_per_week;
        this.hours_per_day = hours_per_day;
        this.vacation_per_year = vacation_per_year;
        this.value_hour = value_hour;
        this.passwordHash = passwordHash;
    }*/
}
