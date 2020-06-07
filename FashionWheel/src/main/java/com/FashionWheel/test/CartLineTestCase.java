package com.FashionWheel.test;



import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.FashionWheel.model.Cart;
import com.FashionWheel.model.CartLine;
import com.FashionWheel.model.CartLineDAO;
import com.FashionWheel.model.Product;
import com.FashionWheel.model.ProductDAO;
import com.FashionWheel.model.User;
import com.FashionWheel.model.UserDAO;

public class CartLineTestCase {

	

	private static AnnotationConfigApplicationContext context;
	
	
	private static CartLineDAO cartLineDAO;
	private static ProductDAO productDAO;
	private static UserDAO userDAO;
	
	
	private Product product = null;
	private User user = null;
	private Cart cart = null;
	private CartLine cartLine = null;
	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.FashionWheel");
		context.refresh();
		cartLineDAO = (CartLineDAO)context.getBean("cartLineDAO");
		productDAO = (ProductDAO)context.getBean("productDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
	
	@Test
	public void testAddNewCartLine() {
		
		
		// fetch the user and then cart of that user
		
		//1. Get The User
		user = userDAO.getByEmail("Hr@gmail.com");		
		
		//2. Set The Cart
	    cart = user.getCart();
		
		//3. Fetch the product 
		product = productDAO.get(2);
		
		// Create a new CartLine
		cartLine = new CartLine();
		
		cartLine.setBuyingPrice(product.getUnitPrice());;
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);;
		
		cartLine.setTotal(cartLine.getProductCount() * product.getUnitPrice());
		
		cartLine.setAvailable(true);
		
		cartLine.setCartId(cart.getId());
		
		cartLine.setProduct(product);
		
		assertEquals("Failed to add the CartLine!",true, cartLineDAO.add(cartLine));
		
		
	
				
	//update the cart
		
		
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1 );
		assertEquals("Failed to update the CartLine!",true, cartLineDAO.updateCart(cart));	
		
	}
	
	
	
	/*@Test
	public void testUpdateCartLine() {

		// fetch the user and then cart of that user
		User user = userDAO.getByEmail("hr@gmail.com");		
		Cart cart = user.getCart();
				
		cartLine = cartLineDAO.getByCartAndProduct(cart.getId(), 2);
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
				
		double oldTotal = cartLine.getTotal();
				
		cartLine.setTotal(cartLine.getProduct().getUnitPrice() * cartLine.getProductCount());
		
		cart.setGrandTotal(cart.getGrandTotal() + (cartLine.getTotal() - oldTotal));
		
		assertEquals("Failed to update the CartLine!",true, cartLineDAO.update(cartLine));	

		
	}*/
	
	
	
}
