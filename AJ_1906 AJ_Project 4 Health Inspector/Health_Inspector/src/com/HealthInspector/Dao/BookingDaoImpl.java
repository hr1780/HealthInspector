package com.HealthInspector.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.HealthInspector.bean.Appointment;
import com.HealthInspector.util.JdbcConnection;

public class BookingDaoImpl implements BookingDao{

	@Override
	public boolean book(Appointment app) {
		Connection con = JdbcConnection.getJdbcConnection();
		PreparedStatement pst = null;
		int i =0;
		//System.out.println(m_pname+m_gender+m_hname+m_city+m_facility);
		String query = "insert into Appointment(PATIENTNAME,Age,GENDER,CONTACTNUMBER,HOSPITALNAME,CITY,FACILITYREQUIRED,MEDICALRECORDS,BDate) values(?,?,?,?,?,?,?,?,?)";
		try {
			pst = con.prepareStatement(query);
			pst.setString(1, app.getName());
			pst.setString(2, app.getAge());
			pst.setString(3, app.getGender());
			pst.setString(4, app.getNumber());
			pst.setString(5, app.getHname());
			pst.setString(6, app.getCity());
			pst.setString(7, app.getFacility());
			pst.setBinaryStream(8, app.getDoc());
			pst.setString(9, app.getDate());

			i = pst.executeUpdate();
			System.out.println(i);
			if(i!= 0) {
				return true;
			}else {
				return false;
			}
			} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
}
		return false;
	}

}
