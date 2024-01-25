package com.myshop.dao;

import java.util.ArrayList;
import java.util.List;

import com.myshop.db.DBHelper;
import com.myshop.db.SQL;
import com.myshop.dto.ProductDTO;

public class ProductDAO extends DBHelper {

	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	private ProductDAO() {}
	
	// CRUD 메서드
	public void insertProduct(ProductDTO dto) {
		try {
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
		}
	
	public ProductDTO selectProduct(int prodNo) {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		}
	
	public List<ProductDTO> selectProducts() {
		
		List<ProductDTO> orders = new ArrayList<>();
		try {
			
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_PRODUCTS);
			
			while(rs.next()) {
				
				ProductDTO dto = new ProductDTO();
				
				dto.setProdNo(rs.getInt(1));
				dto.setProdName(rs.getString(2));
				dto.setStock(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setCompany(rs.getString(5));
				
				orders.add(dto);
			}
			
			Close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return orders;
		}
	
	public void updateProduct(ProductDTO dto) {
		try {
		
	} catch (Exception e) {
		e.printStackTrace();
		}
		
	}
	
	public void deleteProduct(int prodNo) {
		try {
		
	} catch (Exception e) {
		e.printStackTrace();
		}
	}
	
}
