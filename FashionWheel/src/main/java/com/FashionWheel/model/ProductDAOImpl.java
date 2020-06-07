package com.FashionWheel.model;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository("productDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	/*
	 * SINGLE
	 * */
	
	@Override
	public Product get(int productId) {
		try {			
			return sessionFactory
					.getCurrentSession()
						.get(Product.class,Integer.valueOf(productId));			
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}
		return null;
	}

	/*
	 * LIST
	 * */
	
	@Override
	public List<Product> list() {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Product" , Product.class)
						.getResultList();
	}

	/*
	 * INSERT
	 * */
	@Override
	public boolean add(Product product) {
		try {			
			sessionFactory
					.getCurrentSession()
						.persist(product);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;
	}

	/*
	 * UPDATE
	 * */
	@Override
	public boolean update(Product product) {
		try {			
			sessionFactory
					.getCurrentSession()
						.update(product);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;		
	}

	
	/*
	 * DELETE
	 * */
	@Override
	public boolean delete(Product product) {
		try {
			
			product.setActive(false);
			// call the update method
			return this.update(product);
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}		
		return false;			
	}

	@Override
	public List<Product> listActiveProducts() {
		String selectActiveProducts = "FROM Product WHERE active = :active";
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectActiveProducts, Product.class)
						.setParameter("active", true)
							.getResultList();
	}

	@Override
	public List<Product> listActiveProductsByCategory(int categoryId) {
		String selectActiveProductsByCategory = "FROM Product WHERE active = :active AND categoryId = :categoryId";
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectActiveProductsByCategory, Product.class)
						.setParameter("active", true)
						.setParameter("categoryId",categoryId)
							.getResultList();
	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		return sessionFactory
				.getCurrentSession()
					.createQuery("FROM Product WHERE active = :active ORDER BY id", Product.class)
						.setParameter("active", true)
							.setFirstResult(0)
							.setMaxResults(count)
								.getResultList();					
	}

	@Override
	public List<Product> getProductsByParam(String param, int count) {
		
		String query = "FROM Product WHERE active = true ORDER BY " + param + " DESC";
		
		return sessionFactory
					.getCurrentSession()
					.createQuery(query,Product.class)
					.setFirstResult(0)
					.setMaxResults(count)
					.getResultList();
					
		
	}

}






/*package com.FashionWheel.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.FashionWheel.Dbconfig.DbConfig;

@Repository("ProductDAO")

@Transactional
public class ProductDAO implements IProductDAO {
	private Transaction trans;
	private Session sess;
	private boolean b = true;
	


	public boolean insertProduct(Product p) {
		try {
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.save(p);
			trans.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
			b = false;
		}
		return b;
	}
	
	public boolean deleteProduct(Product p) {
		try {
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.delete(p);
			trans.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
			b = false;
		}
		return b;
	}

	@Override
	public Product getProduct(int Pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateProduct(Product p) {
		try {
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.update(p);
			trans.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
			trans.rollback();
			b= false;
		}
		return b;
	}

	@Override
	public List<Product> listActiveProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getProductsByParam(String param, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public Product getProduct(int Pid) {
		
		return null;
	}



	@Override
	public List<Product> getProducts() {
	
		return null;
	}

	@Override
	public boolean updateProduct(Product p) {
		try {
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.update(p);
			trans.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
			trans.rollback();
			b= false;
		}
		return b;
	}

	@Override
	public List<Product> listActiveProducts() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean add(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Product> getProductsByParam(String param, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> listActiveProductsByCategory(int categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getLatestActiveProducts(int count) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public boolean updateProduct(Product p) {
		 
		return false;
	}



	@Override
	public boolean deleteProduct(Product p) {
		 
		return false;
	}



	@Override
	public List<Product> listActiveProducts() {
		 
		return null;
	}
	 

	public List<Product> getProducts() {

		DbConfig db = new DbConfig();
		sess = db.getSess();
		Query<Product> quer = sess.createQuery("FROM Product", Product.class);
		List<Product> al = quer.getResultList();
		return al;
	}

	
	@Override
	public boolean updateProduct(Product p) {
		try {
			DbConfig db = new DbConfig();
			sess = db.getSess();
			trans = sess.beginTransaction();
			sess.update(p);
			trans.commit();
		} catch (Exception exp) {
			exp.printStackTrace();
			trans.rollback();
			b= false;
		}
		return b;
	}

	@Override
	public boolean deleteProduct(Product p) {
		try {

			p.setActive(false);
			return this.updateProduct(p);

		} catch (Exception exp) {
			exp.printStackTrace();
			trans.rollback();
			b = false;
		}
		return b;

	}


	@Override
	public Product getProduct(int Pid) {
		DbConfig db = new DbConfig();
		sess = db.getSess();
		return (Product)sess.get(Product.class, Integer.valueOf(Pid));
	}


	@Override
	public List<Product> listActiveProducts() {
		 
		return null;
	}

	@Override
	public Product get(int Pid) {
		// TODO Auto-generated method stub
		return null;
	}



}
*/