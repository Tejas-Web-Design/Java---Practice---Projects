package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointment;

public class AppointmentDAO {

	private Connection conn;

	public AppointmentDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	//for create appointment
	public boolean addAppointment(Appointment appointment) {

		boolean f = false;

		try {

			String sql = "insert into appointment(userId, fullName, gender, age, appointmentDate, email, phone, diseases, doctorId, address, status) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = this.conn.prepareStatement(sql);

			ps.setInt(1, appointment.getUserId());
			ps.setString(2, appointment.getFullName());
			ps.setString(3, appointment.getGender());
			ps.setString(4, appointment.getAge());
			ps.setString(5, appointment.getAppointmentDate());
			ps.setString(6, appointment.getEmail());
			ps.setString(7, appointment.getPhone());
			ps.setString(8, appointment.getDiseases());
			ps.setInt(9, appointment.getDoctorId());
			ps.setString(10, appointment.getAddress());
			ps.setString(11, appointment.getStatus());

			ps.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	
	public List<Appointment> getAllAppointmentByLoginUser(int userId) {
		List<Appointment> appList = new ArrayList<Appointment>();

		Appointment appointment = null;

		try {

			String sql = "select * from appointment where userId=?";
			PreparedStatement ps = this.conn.prepareStatement(sql);

			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				appointment = new Appointment();

				appointment.setId(rs.getInt(1));// appoint id
				appointment.setUserId(rs.getInt(2));// userId
				appointment.setFullName(rs.getString(3));
				appointment.setGender(rs.getString(4));
				appointment.setAge(rs.getString(5));
				appointment.setAppointmentDate(rs.getString(6));
				appointment.setEmail(rs.getString(7));
				appointment.setPhone(rs.getString(8));
				appointment.setDiseases(rs.getString(9));
				appointment.setDoctorId(rs.getInt(10));
				appointment.setAddress(rs.getString(11));
				appointment.setStatus(rs.getString(12));
				appList.add(appointment);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return appList;

	}
	
	public List<Appointment> getAllAppointmentByLoginDoctor(int doctorId) {
		List<Appointment> appList = new ArrayList<Appointment>();

		Appointment appointment = null;

		try {

			String sql = "select * from appointment where doctorId=?";
			PreparedStatement ps = this.conn.prepareStatement(sql);

			ps.setInt(1, doctorId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				appointment = new Appointment();

				appointment.setId(rs.getInt(1));// appoint id
				appointment.setUserId(rs.getInt(2));// userId
				appointment.setFullName(rs.getString(3));
				appointment.setGender(rs.getString(4));
				appointment.setAge(rs.getString(5));
				appointment.setAppointmentDate(rs.getString(6));
				appointment.setEmail(rs.getString(7));
				appointment.setPhone(rs.getString(8));
				appointment.setDiseases(rs.getString(9));
				appointment.setDoctorId(rs.getInt(10));
				appointment.setAddress(rs.getString(11));
				appointment.setStatus(rs.getString(12));
				appList.add(appointment);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return appList;

	}

	
	public Appointment getAppointmentById(int id) {

		Appointment appointment = null;

		try {

			String sql = "select * from appointment where id=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			pstmt.setInt(1, id);

			ResultSet resultSet = pstmt.executeQuery();

			while (resultSet.next()) {

				appointment = new Appointment();

				appointment.setId(resultSet.getInt(1));// appoint id
				appointment.setUserId(resultSet.getInt(2));// userId
				appointment.setFullName(resultSet.getString(3));
				appointment.setGender(resultSet.getString(4));
				appointment.setAge(resultSet.getString(5));
				appointment.setAppointmentDate(resultSet.getString(6));
				appointment.setEmail(resultSet.getString(7));
				appointment.setPhone(resultSet.getString(8));
				appointment.setDiseases(resultSet.getString(9));
				appointment.setDoctorId(resultSet.getInt(10));
				appointment.setAddress(resultSet.getString(11));
				appointment.setStatus(resultSet.getString(12));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return appointment;

	}
	
	
	public int countAppointmentsByDoctor(int doctorId) {
	    int count = 0;
	    try {
	        String sql = "SELECT COUNT(*) FROM appointment WHERE doctorId=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, doctorId);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return count;
	}

	
	
	// for update comment status
	public boolean updateDrAppointmentCommentStatus(int apptId, int docId, String comment) {

		boolean f = false;

		try {

			String sql = "update appointment set status=? where id=? and doctorId=?";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, comment);
			pstmt.setInt(2, apptId);
			pstmt.setInt(3, docId);

			pstmt.executeUpdate();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	// get all appointment in admin panel
	public List<Appointment> getAllAppointment() {
		List<Appointment> appList = new ArrayList<Appointment>();
		Appointment appointment = null;

		try {

			String sql = "select * from appointment order by id desc";
			PreparedStatement pstmt = this.conn.prepareStatement(sql);

			ResultSet resultSet = pstmt.executeQuery();

			while (resultSet.next()) {

				appointment = new Appointment();

				appointment.setId(resultSet.getInt(1));// appoint id
				appointment.setUserId(resultSet.getInt(2));// userId
				appointment.setFullName(resultSet.getString(3));
				appointment.setGender(resultSet.getString(4));
				appointment.setAge(resultSet.getString(5));
				appointment.setAppointmentDate(resultSet.getString(6));
				appointment.setEmail(resultSet.getString(7));
				appointment.setPhone(resultSet.getString(8));
				appointment.setDiseases(resultSet.getString(9));
				appointment.setDoctorId(resultSet.getInt(10));
				appointment.setAddress(resultSet.getString(11));
				appointment.setStatus(resultSet.getString(12));
				appList.add(appointment);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return appList;
	}
}
