package com.myshop.db;

public class SQL {
	
	public static final String INSERT_CUSTOMER = "INSERT INTO `Customer` VALUES (?,?,?,?,NOW()) ";
	
	public static final String SELECT_CUSTOMER = "SELECT * FROM `Customer` WHERE `custID`=?";
	public static final String SELECT_CUSTOMERS = "";
	public static final String UPDATE_CUSTOMER = "";
	public static final String DELETE_CUSTOMER = "";
	
	
	
	
	
	
	
	
	public static final String INSERT_ORDER = "INSERT INTO `Order` (orderID, orderProduct, orderCount, orderDate) "
			                                           + "VALUES(?, ?, ?, NOW())";
	public static final String SELECT_ORDER = "";
	
	public static final String SELECT_ORDERS = "SELECT a.*, b.prodNAme, b.price, b.company FROM `Order` as a "
			                                   + "JOIN `Product` AS b on a.orderProduct = b.prodNO "
					                           + "WHERE a.OrderID=? "
							                   + "ORDER BY `orderDate` DESC";   
	
	public static final String UPDATE_ORDER = "";
	public static final String DELETE_ORDER = "";

	
	
	
	
	
	
	public static final String INSERT_PRODUCT = "";
	public static final String SELECT_PRODUCT = "";
	public static final String SELECT_PRODUCTS = "SELECT * FROM `Product`";
	public static final String UPDATE_PRODUCT = "";
	
	public static final String UPDATE_PRODUCT_STOCK = "UPDATE `Product` Set `stock` = `stock`-?"
                                                    + " WHERE `prodNo`=? ";
	
	public static final String DELETE_PRODUCT = "";
}
