package com.FashionWheel.model;

import java.util.List;

public interface UserDAO {

	
	boolean addUser(User user);
	User get(int id);
	User getByEmail(String email);



	

	boolean addAddress(Address address);
	boolean addCart(Cart cart);
	

	// adding and updating a new address
	Address getAddress(int addressId);
	boolean updateAddress(Address address);
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
	Address getBillingAddress(int userId);
	List<Address> listShippingAddresses(int userId);
	
	

	
}
