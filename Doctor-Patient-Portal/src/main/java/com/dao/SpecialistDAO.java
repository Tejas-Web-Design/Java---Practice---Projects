package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specialist;

public class SpecialistDAO {

	private Connection conn;

	public SpecialistDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean addSpecialist(String sp) {
		
		boolean f =false;
		
		try {
			
			String sql = "insert into specialist(specialist_name) values(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, sp);
			
			int i = ps.executeUpdate();
			if(i==1) {
				
				f = true; 
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	public List<Specialist> getAllSpecialist() {
		
		List<Specialist> spList = new ArrayList<Specialist>();
		
		Specialist specialistObj = null;
		
		try {
			
			String sql = "select * from specialist";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			ResultSet resultSet = pstmt.executeQuery();
			
			while(resultSet.next()) {
				
				
				specialistObj = new Specialist();
				
				specialistObj.setId(resultSet.getInt(1));
				specialistObj.setSpecialistName(resultSet.getString(2));
				
				
				spList.add(specialistObj);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return spList;
	}

	
}
