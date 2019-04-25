package com.HealthInspector.service;

import com.HealthInspector.Dao.HealthInspectorDao;
import com.HealthInspector.Dao.HealthInspectorDaoImpl;
import com.HealthInspector.bean.Login;

public class HealthInspectorServiceImpl implements HealthInspectorService{
	
	HealthInspectorDao hdao = new HealthInspectorDaoImpl();
	@Override
	public boolean validatelogin(Login login) {
		if (hdao.validatelogin(login)) {
			return true;
		}
		return false;
	}
}
