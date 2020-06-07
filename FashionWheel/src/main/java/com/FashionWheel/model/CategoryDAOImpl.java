package com.FashionWheel.model;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	
	/*  private static List<Category> categories = new ArrayList<>();
	  
	  static {
	  
	  Category category = new Category(); //adding first category
	  category.setId(1); category.setName("Men's");
	  category.setDescription("New Mens Collections");
	  category.setImageURL("Mens.png");
	 
	  categories.add(category);
	  
	  category = new Category(); //adding second category category.setId(2);
	  category.setName("Women's");
	  category.setDescription("New Womens Collections");
	  category.setImageURL("Womens.png");
	  
	  categories.add(category);
	  
	  category = new Category(); //adding Third category category.setId(3);
	  category.setName("Kid's"); category.setDescription("New Kids Collections");
	  category.setImageURL("Kids.png");
	  
	  categories.add(category); }
	 */

	@Override
	public List<Category> list() {

		String selectActiveCategory = "FROM Category WHERE active = :active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		
		query.setParameter("active", true);
						
		return query.getResultList();
	}

	@Override
	public Category get(int id) {

		// Getting only Single Category
		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));

		/*
		 * // loop for(Category category : categories) {
		 * 
		 * if(category.getId() == id) return category;
		 * 
		 * }
		 */

	}

	@Override
	public boolean add(Category category) {

		try {

			// adding category into DB
			sessionFactory.getCurrentSession().persist(category);
			return true;

		} catch (Exception ex) {

			ex.printStackTrace();
			return false;
		}

	}

	
	//Updating Single Category
	@Override
	public boolean update(Category category) {
		try {

			// adding category into DB
			sessionFactory.getCurrentSession().update(category);
			return true;

		} catch (Exception ex) {

			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean delete(Category category) {
		
		category.setActive(false);
		try {

			// adding category into DB
			sessionFactory.getCurrentSession().update(category);
			return true;

		} catch (Exception ex) {

			ex.printStackTrace();
			return false;
		}
	}

}
