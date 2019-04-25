package com.HealthInspector.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.HealthInspector.bean.Register;
import com.HealthInspector.util.JdbcConnection;

public class RegisterDaoImpl implements RegisterDao {

	@Override
	public boolean getregester(Register register) {
		Connection con = null;
		PreparedStatement pst=null;
		con = JdbcConnection.getJdbcConnection();
		String query = "insert into Registration values(?,?,?,?,?,?,?,?)";
		try {
			pst = con.prepareStatement(query);
			pst.setString(1,register.getUserType() );
			pst.setString(2, register.getFname());
			pst.setString(3, register.getLname());
			pst.setInt(4, register.getAge());
			pst.setString(5, register.getGender());
			pst.setLong(6, register.getCnumber());
			pst.setString(7, register.getUserid());
			pst.setString(8, register.getPassword());
			
			if(pst.executeUpdate()!=0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		catch (Exception  e1) {
			return false;
		}
		return false;
	}
	}
