/*package com.FashionWheel.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.FashionWheel.model.Address;
import com.FashionWheel.model.Cart;
import com.FashionWheel.model.User;
import com.FashionWheel.model.UserDAO;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
	private Cart cart = null;
	private Address address = null;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.FashionWheel");
		context.refresh();

		userDAO = (UserDAO) context.getBean("userDAO");
	}

	@Test
	public void testAddUser() {

		user = new User();
		user.setFirstName("ERk");
		user.setLastName("Roshan");
		user.setEmail("hr@gmail.com");
		user.setContactNumber("1234512345");
		user.setRole("CUSTOMER");
		user.setEnabled(true);
		user.setPassword("12345");

		// add the user
		assertEquals("Failed to add the user!", true, userDAO.addUser(user));

		address = new Address();
		address.setAddressLineOne("101/B Jadoo Society, Krissh Nagar");
		address.setAddressLineTwo("Near Kaabil Store");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
		address.setBilling(true);

		// linked the address with the user
		address.setUser(user);

		// add the address
		assertEquals("Failed to add the billing address!", true, userDAO.addAddress(address));

		// add the shipping address
		address = new Address();
		address.setAddressLineOne("201/B Jadoo Society, Kishan Kanhaiya Nagar");
		address.setAddressLineTwo("Near Kudrat Store");
		address.setCity("Mumbai");
		address.setState("Maharashtra");
		address.setCountry("India");
		address.setPostalCode("400001");
		address.setShipping(true);
		
		
		address.setUser(user);
		assertEquals("Failed to add the shipping address!", true, userDAO.addAddress(address));

	}
	
	 * // working for uni-directional
	 @Test
		public void testAddAddress() {
			user = userDAO.getByEmail("rk1@gmail.com");
			
			address = new Address();
			address.setAddressLineOne("301/B Jadoo Society, King Uncle Nagar");
			address.setAddressLineTwo("Near Store");
			address.setCity("Mumbai");
			address.setState("Maharashtra");
			address.setCountry("India");
			address.setPostalCode("400001");
			address.setShipping(true);
					
			address.setUser(user);
			// add the address
			assertEquals("Failed to add the address!", true, userDAO.addAddress(address));	
		}
		
 
	 
}
*/