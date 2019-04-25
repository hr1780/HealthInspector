package com.HealthInspector.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.HealthInspector.bean.Login;
import com.HealthInspector.util.JdbcConnection;


public class HealthInspectorDaoImpl implements HealthInspectorDao {

	@Override
	public boolean validatelogin(Login login) {
		PreparedStatement pst=null;
		String query;
		boolean s = false;
		Connection con = null;
		con = JdbcConnection.getJdbcConnection();
		query = "select * from Registration where userid = ? and password = ?";
		try {
			pst = con.prepareStatement(query);
			pst.setString(1	, login.getUserid());
			pst.setString(2, login.getPass());
			ResultSet rs = pst.executeQuery();
			 s = rs.next(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}

}