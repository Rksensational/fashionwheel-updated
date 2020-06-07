package com.FashionWheel.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.FashionWheel.model.Address;
import com.FashionWheel.model.Cart;
import com.FashionWheel.model.RegisterModel;
import com.FashionWheel.model.User;
import com.FashionWheel.model.UserDAO;

@Component
public class RegisterHandler {


 @Autowired
 private PasswordEncoder passwordEncoder;

	
 @Autowired
 private UserDAO userDAO;
 
 
 public RegisterModel init() { 
  return new RegisterModel();
 } 
 
 public void addUser(RegisterModel registerModel, User user) {
  registerModel.setUser(user);
 } 
 
 public void addBilling(RegisterModel registerModel, Address billing) {
  registerModel.setBilling(billing);
 }
 
 public String saveAll(RegisterModel registerModel) {
	  String transitionValue = "success";
	  User user = registerModel.getUser();
	  if(user.getRole().equals("USER")) {
		  
		  
	   // create a new cart
	   Cart cart = new Cart();
	   cart.setUser(user);
	   user.setCart(cart);
	  }
	   
	  // encode the password
	  user.setPassword(passwordEncoder.encode(user.getPassword()));
	  
	  // save the user
	  userDAO.addUser(user);
	  
	  // save the billing address
	  Address billing = registerModel.getBilling();
	  billing.setUserId(user.getId());
	  billing.setBilling(true);
	  
	  //save the billing address
	  userDAO.addAddress(billing);
	  return transitionValue ;
	 } 
	


 public String validateUser(User user, MessageContext error) {
  String transitionValue = "success";
   if(!user.getPassword().equals(user.getConfirmPassword())) {
    error.addMessage(new MessageBuilder().error().source(
      "confirmPassword").defaultText("Password does not match confirm password!").build());
    transitionValue = "failure";    
   }  
   if(userDAO.getByEmail(user.getEmail())!=null) {
    error.addMessage(new MessageBuilder().error().source(
      "email").defaultText("Email address is already taken!").build());
    transitionValue = "failure";
   }
  return transitionValue;
 }
}
 
