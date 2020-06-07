package com.FashionWheel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.FashionWheel.model.Category;
import com.FashionWheel.model.CategoryDAO;
import com.FashionWheel.model.Product;
import com.FashionWheel.model.ProductDAO;
import com.FashionWheel.util.FileUploadUtility;
import com.FashionWheel.validator.ProductValidator;

@Controller
@RequestMapping("/manage")
public class ManageController {

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	private static final Logger logger = LoggerFactory.getLogger(ManageController.class);

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView showManageProducts(@RequestParam(name = "operation", required = false) String operation) {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");
		Product nProduct = new Product();

		// New Fields
		nProduct.setSupplierId(1);
		nProduct.setActive(true);

		mv.addObject("product", nProduct);

		if (operation != null) {
			if (operation.equals("product")) {
				mv.addObject("message", "Product Suceessfully Added ..");

			} else if (operation.equals("category")) {
				mv.addObject("message", "Category Suceessfully Added ..");

			}

		}

		return mv;

	}

	@RequestMapping(value = "/{id}/product", method = RequestMethod.GET)
	public ModelAndView showEditProduct(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("userClickManageProducts", true);
		mv.addObject("title", "Manage Products");

		// get from DB
		Product nProduct = productDAO.get(id);
		// set into page
		mv.addObject("product", nProduct);

		return mv;

	}

	// Product Submiited Here..
	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String handleProductSubmission(@Valid @ModelAttribute("product") Product mProduct, BindingResult results,
			Model model, HttpServletRequest request) {

		// Product Validator For Image
		if (mProduct.getId() == 0) {
			new ProductValidator().validate(mProduct, results);
		} else {
			if (!mProduct.getFile().getOriginalFilename().equals("")) {
				new ProductValidator().validate(mProduct, results);
			}

		}

		// Check errors
		if (results.hasErrors()) {

			model.addAttribute("userClickManageProducts", true);
			model.addAttribute("title", "Manage Products");
			model.addAttribute("message", "Validation Failed For Product Submission");
			return "page";
		}

		logger.info(mProduct.toString());

		// Creating New Product Records..
		if (mProduct.getId() == 0) {
			productDAO.add(mProduct);
		} else {
			// Update existing Product
			productDAO.update(mProduct);
		}
		productDAO.add(mProduct);

		if (!mProduct.getFile().getOriginalFilename().equals("")) {
			FileUploadUtility.uploadFile(request, mProduct.getFile(), mProduct.getCode());

		}

		return "redirect:/manage/products?operation=product";
	}

	@RequestMapping(value = "/product/{id}/activation", method = RequestMethod.POST)
	@ResponseBody
	public String handleProductActivation(@PathVariable int id) {

		Product product = productDAO.get(id);

		boolean isActive = product.isActive();

		// Activating And Deactivating
		product.setActive(!product.isActive());

		productDAO.update(product);

		return (isActive) ? "You have Succesfully Deactivated the Product with ID " + product.getId()
				: "You have Succesfully Activated the Product with ID " + product.getId();
	}

	// category submission
	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public String handleCategorySubmission(@ModelAttribute Category category) {
		// New Category
		categoryDAO.add(category);

		return "redirect:/manage/products?operation=category";

	}

	// Return Categories...
	@ModelAttribute("categories")
	public List<Category> getCategories() {

		return categoryDAO.list();

	}

	@ModelAttribute("category")
	public Category getCategory() {
		return new Category();
	}

}
