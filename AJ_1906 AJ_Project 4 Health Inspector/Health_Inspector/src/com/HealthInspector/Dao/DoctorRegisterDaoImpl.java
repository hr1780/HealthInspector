package com.HealthInspector.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.HealthInspector.bean.Doctor;
import com.HealthInspector.bean.Register;
import com.HealthInspector.util.JdbcConnection;

public class DoctorRegisterDaoImpl implements DoctorRegisterDao {

	@Override
	public boolean getregester(Doctor doctor) {
		Connection con = null;
		PreparedStatement pst = null;
		String query = "insert into regdoctor values(?,?,?,?,?,?)";
		
		try {
			con= JdbcConnection.getJdbcConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, doctor.getDid());
			pst.setString(2, doctor.getName());
			pst.setString(3, doctor.getSpec());
			pst.setString(4, doctor.getShift());
			pst.setString(5, doctor.getCno());
			pst.setString(6, doctor.getAddress());
			
			int x = pst.executeUpdate();
			if(x>0) {
				System.out.println("Scessfully Reguster");
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
	}
	}
