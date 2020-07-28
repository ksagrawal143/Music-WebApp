package com.JavaWebApplication.Model;

import java.sql.Connection;
import java.sql.ResultSet;
/*import java.sql.ResultSet;*/
import java.sql.SQLException;
import java.sql.Statement;

import com.JavaWebApplication.Beans.RegisterBean;

public class UserDBAct {
	public void insertUser(RegisterBean rb) {
		MyDB db=new MyDB();
		Connection con=db.getCon();
		try {
			Statement stat=con.createStatement();
			String q1="Insert into register(UserName,Email,Password) values ('"+rb.getName()+"','"+rb.getEmail()+"','"+rb.getPass()+"')";
			stat.executeUpdate(q1);
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean existUser(RegisterBean rb) throws SQLException {
		MyDB db=new MyDB();
		Connection con=db.getCon();
		try {
			Statement stat=con.createStatement();
			boolean rs=stat.execute("SELECT UserName,Email FROM register WHERE UserName='"+rb.getName()+"' OR Email='"+rb.getEmail()+"';");
			if(rs) {
				return true;
			}
			else {
				con.close();
				return false;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.print("Exception Occurred");
		}
		return false;
	}
	public String verifyUser(RegisterBean rb) throws SQLException {
		MyDB db=new MyDB();
		Connection con=db.getCon();
		String s="";
		try {
			Statement stat=con.createStatement();
			 ResultSet rs=stat.executeQuery("SELECT UserName,Password FROM register WHERE UserName='"+rb.getName()+"';");
			if(rs.next()){
			if(rs.getString("Password").equals(rb.getPass())) {
				s="Login successful.";
			}
			else if(!rs.getString("Password").equals(rb.getPass())) {
				s="Incorrect Password.";
			}
			}
			else
			{
				s="User does not exist.";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			con.close();
		}
		return s;
	}
}
