package com.JavaWebApplication.Controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.JavaWebApplication.Model.MyDB;
public class insertmus {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyDB db=new MyDB();
		String add="./images/si1.jpg";
		Connection con=db.getCon();
		try {
			Statement stat=con.createStatement();
			for(int i=46;i<=50;i++) {
				String q1="update songsdb set imageadd='"+add+"' where id="+i+";";
				stat.execute(q1);
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
