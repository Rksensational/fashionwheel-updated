package com.FashionWheel.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.FashionWheel.model.Category;
import com.FashionWheel.model.CategoryDAO;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {

		context = new AnnotationConfigApplicationContext();
		context.scan("com.FashionWheel");
		context.refresh();
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");

	}

/*	@Test
	public void testAddCategory() {

		category = new Category();
		category.setName("Men's");
		category.setDescription("New Men's Collections");
		category.setImageURL("Mens.png");

		assertEquals("Successfully added a New Category into a DB Table", true, categoryDAO.add(category));

	}*/
	
	/*@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(1);
		assertEquals("Successfully Get a Category From DB Table","Sports", category.getName());
		
	}
	*/
	
	/*@Test
	public void testUpdateCategory() {

		category = categoryDAO.get(1);
		category.setName("Books");
		category.setDescription("New Books Collections");
		category.setImageURL("Books.png");

		assertEquals("Successfully Updated a New Category into a DB Table", true, categoryDAO.update(category));

	}	*/
	
	
	/*@Test
	public void testDeleteCategory() {

		category = categoryDAO.get(3);
	
		assertEquals("Successfully Deleted a Single Category into a DB Table", true, categoryDAO.delete(category));
	
	}*/
	
/*	
	@Test
	public void testListCategory() {
	
		assertEquals("Successfully Get a List Of Category FROM a DB Table",2, categoryDAO.list().size());
	
	}*/
	
	
	@Test
	public void testCRUDCategory() {
		
		//Adding Category Into DATABASE
		//1 category
		category = new Category();
		category.setName("Women's");
		category.setDescription("New Women's Collections");
		category.setImageURL("Womens.png");

		assertEquals("Successfully added a New Category into a DB Table", true, categoryDAO.add(category));
		
		//2 category
		category = new Category();
		category.setName("Kid's");
		category.setDescription("New Kids's Collections");
		category.setImageURL("Womens.png");

		assertEquals("Successfully added a New Category into a DB Table", true, categoryDAO.add(category));
		
		//Updating Category
		
		category = categoryDAO.get(2);
		category.setName("Mens");
		category.setDescription("New Mens Collections");
		category.setImageURL("Menss.png");

		assertEquals("Successfully Updated a New Category into a DB Table", true, categoryDAO.update(category));
		
		
	/*	//Deleting Category
		
		assertEquals("Successfully Deleted a Single Category into a DB Table", true, categoryDAO.delete(category));
		
		
		//Getting list  of category
		assertEquals("Successfully Get a List Of Category FROM a DB Table",1, categoryDAO.list().size());*/
		
		
	}

	
	

}
