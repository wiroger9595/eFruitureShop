package com.efurnitureshop.dao;

import java.util.List;

import com.efurnitureshop.model.Product;

public interface ProductDAO {
	
	
	void addProduct(Product product);
	void editProduct(Product product);
	
	Product getProductById(String id);
	
	List<Product> getAllProducts();
	
	void deleteProduct(String id);
	
}
