package com.HealthInspector.service;

import com.HealthInspector.Dao.DoctorRegisterDao;
import com.HealthInspector.Dao.DoctorRegisterDaoImpl;
import com.HealthInspector.bean.Doctor;

public class DoctorRegisterServiceImpl implements DoctorRegisterService {

	DoctorRegisterDao rDao = new DoctorRegisterDaoImpl();

	@Override
	public boolean getregester(Doctor doctor) {
		if(rDao.getregester(doctor))
			return true;
		
		return false;
	}
	
	

}
