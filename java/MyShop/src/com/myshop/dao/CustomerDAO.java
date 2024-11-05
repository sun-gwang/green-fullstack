package com.myshop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.myshop.db.DBHelper;
import com.myshop.db.SQL;
import com.myshop.dto.CustomerDTO;

public class CustomerDAO extends DBHelper{
	
	private static CustomerDAO instance = new CustomerDAO();
	
	public static CustomerDAO getInstance() {
		return instance;
	}
	
	private CustomerDAO() {	}
	
	
	// CRUD 메서드
	public void insertCustomer(CustomerDTO dto) {
		try {
			
			
			conn = getConnection();
			
			// 3단계
			psmt = conn.prepareStatement(SQL.INSERT_CUSTOMER);
			
			psmt.setString(1, dto.getCustID());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setString(4, dto.getAddr());
			
			// 4단계
			psmt.executeUpdate();
			// 5단계
			
			// 6단계
			Close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public CustomerDTO selectCustomer(String custID) { 
		
		CustomerDTO customer = null;
		
		try {
			
			conn = getConnection();
			
			// 3단계
			psmt = conn.prepareStatement(SQL.SELECT_CUSTOMER);
			psmt.setString(1, custID);
			
			// 4단계
			rs = psmt.executeQuery();
			
			// 5단계
			if(rs.next()) {
				
				customer = new CustomerDTO();
				
				customer.setCustID(rs.getString(1));
				customer.setName(rs.getString(2));
				customer.setHp(rs.getString(3));
				customer.setAddr(rs.getString(4));
				customer.setRdate(rs.getString(5));
				
				
			}
			// 6단계
			Close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return customer;
	}
	
	public List<CustomerDTO> selectCustomers() {
		try {
			// 1단계
			// 2단계
			// 3단계
			// 4단계
			// 5단계
						
			// 6단계
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public void updateCustomer(CustomerDTO dto) {
		try {
			// 1단계
			// 2단계
			// 3단계
			// 4단계
			// 5단계
						
			// 6단계
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteCustomer(String custID) {
		try {
			// 1단계
			// 2단계
			// 3단계
			// 4단계
			// 5단계
						
			// 6단계
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

}
