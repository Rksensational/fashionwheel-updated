package com.FashionWheel.test;




import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.FashionWheel.model.Product;
import com.FashionWheel.model.ProductDAO;



public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	
	
	private static ProductDAO productDAO;
	
	
	private Product product;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.FashionWheel");
		context.refresh();
		productDAO = (ProductDAO)context.getBean("productDAO");
	}
	
	@Test
	public void testCRUDProduct() {
		
		// create operation
		product = new Product();
				
		product.setName("Shirts");
		product.setBrand("Van Husen");
		product.setDescription("New Branded Collections Here");
		product.setUnitPrice(1999);
		product.setActive(true);
		product.setCategoryId(20);
		product.setSupplierId(1);
		
		assertEquals("Something went wrong while inserting a new product!",
				true,productDAO.add(product));		
		
		// create operation
				product = new Product();
						
				product.setName("T-shirts");
				product.setBrand("Brand Factory");
				product.setDescription("New Desgin of Fashion Here");
				product.setUnitPrice(999);
				product.setActive(true);
				product.setCategoryId(2);
				product.setSupplierId(1);
				
				assertEquals("Something went wrong while inserting a new product!",
						true,productDAO.add(product));		
				
				// create operation
				product = new Product();
						
				product.setName("Jeans");
				product.setBrand("Van Husen");
				product.setDescription("New Branded Collections Here");
				product.setUnitPrice(2999);
				product.setActive(true);
				product.setCategoryId(3);
				product.setSupplierId(1);
				
				assertEquals("Something went wrong while inserting a new product!",
						true,productDAO.add(product));		
		
	/*	// reading and updating the category
		product = productDAO.get(1);
		product.setName("Samsung Galaxy S7");
		assertEquals("Something went wrong while updating the existing record!",
				true,productDAO.update(product));		
				
		assertEquals("Something went wrong while deleting the existing record!",
				true,productDAO.delete(product));		
		
		// list
		assertEquals("Something went wrong while fetching the list of products!",
				4,productDAO.list().size());		
				
	}
}*/
	}	
	
/*	@Test
	public void testListActiveProducts() {
		assertEquals("Something went wrong while fetching the list of products!",
				3,productDAO.listActiveProducts().size());				
	} 
	*/
	
/*	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Something went wrong while fetching the list of products!",
				1,productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something went wrong while fetching the list of products!",
				1,productDAO.listActiveProductsByCategory(1).size());
	} 
	}*/
	
/*	@Test
	public void testGetLatestActiveProduct() {
		assertEquals("Something went wrong while fetching the list of products!",
				3,productDAO.getLatestActiveProducts(3).size());*/
		
	}
	
	

