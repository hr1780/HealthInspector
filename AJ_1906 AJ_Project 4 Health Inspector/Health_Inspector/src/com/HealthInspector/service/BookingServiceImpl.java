package com.HealthInspector.service;
import com.HealthInspector.Dao.BookingDao;
import com.HealthInspector.Dao.BookingDaoImpl;
import com.HealthInspector.bean.Appointment;
import com.HealthInspector.service.BookingService;

public class BookingServiceImpl implements BookingService{

	BookingDao Bdao = new BookingDaoImpl();
	@Override
	public boolean book(Appointment app) {
		if(Bdao.book(app)) {
			return true;
		}
		return false;
	}

}
