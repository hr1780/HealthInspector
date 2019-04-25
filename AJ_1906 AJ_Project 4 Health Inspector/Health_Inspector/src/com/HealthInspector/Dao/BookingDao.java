package com.HealthInspector.Dao;
import com.HealthInspector.bean.Appointment;

public interface BookingDao {

	boolean book(Appointment app);
}
