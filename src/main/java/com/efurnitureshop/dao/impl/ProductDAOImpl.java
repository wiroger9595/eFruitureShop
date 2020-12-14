package com.efurnitureshop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.efurnitureshop.dao.ProductDAO;
import com.efurnitureshop.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public void addProduct(Product product) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}
	
	public void editProduct(Product product) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}
	
	public Product getProductById(String id) {

		Session session = sessionFactory.getCurrentSession();
		Product product = (Product)session.get(Product.class, id);
		session.flush();
		
		return product;
	}

	public List<Product> getAllProducts() {

		Session session = sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product", Product.class);
		List<Product> products = query.list();
		session.flush();
		
		return products;
	}

	public void deleteProduct(String id) {
		
		Session session = sessionFactory.getCurrentSession();
		session.delete(getProductById(id));
		session.flush();
		
	}

}
