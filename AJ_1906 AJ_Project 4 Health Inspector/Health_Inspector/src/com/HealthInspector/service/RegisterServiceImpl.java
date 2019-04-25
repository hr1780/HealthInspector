package com.HealthInspector.service;

import com.HealthInspector.Dao.RegisterDao;
import com.HealthInspector.Dao.RegisterDaoImpl;
import com.HealthInspector.bean.Register;

public class RegisterServiceImpl implements RegisterService {

	RegisterDao rDAo = new RegisterDaoImpl();
	
	@Override
	public boolean getregester(Register register) {
		if(rDAo.getregester(register)) {
			return true;
		}
		return false;
	}

}
