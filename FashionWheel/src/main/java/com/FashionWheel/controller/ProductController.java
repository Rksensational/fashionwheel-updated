package com.FashionWheel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
/*import org.springframework.web.bind.annotation.ModelAttribute;*/
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.FashionWheel.model.Category;
import com.FashionWheel.model.CategoryDAO;
import com.FashionWheel.model.Product;
import com.FashionWheel.model.ProductDAO;

@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private CategoryDAO CategoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView home() {

		ModelAndView view = new ModelAndView("product");
		view.addObject("HeaderName", "Welcome to Products Page");
		return view;
	}

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");

		// passing the list of categories
		mv.addObject("categories", CategoryDAO.list());

		mv.addObject("userClickHome", true);

		return mv;
	}

	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
	}

	@RequestMapping(value = "/Categorys")
	public ModelAndView Categorys() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Categorys");
		mv.addObject("userClickCategorys", true);
		return mv;
	}

	@RequestMapping(value = "/emailletter")
	public ModelAndView emailletter() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userSignupLetter", true);
		return mv;
	}

	@RequestMapping(value = "/offers")
	public ModelAndView services() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "ProductAdd");
		mv.addObject("userClickProductAdd", true);
		return mv;
	}

	/* Women Quick View */
	@RequestMapping(value = "/quickview")
	public ModelAndView Womenquickviews() {
		ModelAndView mv = new ModelAndView("quickview");
		mv.addObject("title", "QuickView");
		return mv;
	}

	/* Women Quick View */
	@RequestMapping(value = "/Mquickview")
	public ModelAndView Menquickviews() {
		ModelAndView mv = new ModelAndView("Mquickview");
		mv.addObject("title", "QuickView");
		return mv;
	}

	/* Trending and related */
	@RequestMapping(value = "/relatedproduct")
	public ModelAndView Trending() {
		ModelAndView mv = new ModelAndView("relatedproduct");
		mv.addObject("title", "QuickView");
		mv.addObject("userClickTrending", true);
		return mv;
	}

	@RequestMapping(value = "/show/all/products")
	public ModelAndView showAllProducts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "All Products");

		// passing the list of categories
		mv.addObject("categories", CategoryDAO.list());

		mv.addObject("userClickAllProducts", true);
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public ModelAndView showCategoryProducts(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("page");

		// Category DAO for Single Category
		Category category = null;

		category = CategoryDAO.get(id);

		mv.addObject("title", category.getName());

		// passing the list of categories
		mv.addObject("categories", CategoryDAO.list());

		// passing the single category object
		mv.addObject("category", category);

		mv.addObject("userClickCategoryProducts", true);
		return mv;
	}

	@RequestMapping(value = "/validate")
	public ModelAndView register1() {
		ModelAndView mv = new ModelAndView("page");

		logger.info("Page Controller membership called!");

		return mv;
	}

	@RequestMapping(value = "/privatePage", method = RequestMethod.GET)
	public String getPrivatePage() {

		return "privatepage";

	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView Login1() {

		ModelAndView view = new ModelAndView("Login1");
		view.addObject("HeaderName", " Welcome To FASHION WHEEL ");
		return view;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(name = "logout", required = false) String logout) {

		ModelAndView view = new ModelAndView("login");

		if (error != null) {
			view.addObject("message", "Invalid Username and Password");
		}
		if (logout != null) {
			view.addObject("logout", "User Has Successfully Logout");
		}

		view.addObject("HeaderName", " Welcome To FASHION WHEEL , Login ");
		return view;
	}

	@RequestMapping(value = "/signupAdmin", method = RequestMethod.GET)
	public ModelAndView loginsignupAdmin() {

		ModelAndView view = new ModelAndView("signupAdmin");
		view.addObject("HeaderName", " Welcome To FASHION WHEEL ");
		return view;
	}

	// Register
	@RequestMapping(value = "/register")
	public ModelAndView register() {

		ModelAndView view = new ModelAndView("page");
		view.addObject("title", " About us");

		return view;
	}

	/*
	 * @RequestMapping(value = "/login") public ModelAndView login() {
	 * 
	 * ModelAndView view = new ModelAndView("page"); view.addObject("title",
	 * " About us");
	 * 
	 * return view; }
	 */
	/*
	 * @RequestMapping(value = "/Login1", method = RequestMethod.GET) public
	 * ModelAndView Login() {
	 * 
	 * ModelAndView view = new ModelAndView("Login1"); view.addObject("HeaderName",
	 * " Welcome To FASHION WHEEL "); return view; }
	 */

	@RequestMapping(value = "/offers", method = RequestMethod.GET)
	public ModelAndView offers() {

		ModelAndView view = new ModelAndView("offers");
		view.addObject("HeaderName", " Welcome To FASHION WHEEL ");
		return view;
	}

	@RequestMapping(value = "/error404", method = RequestMethod.GET)
	public ModelAndView error404() {

		ModelAndView view = new ModelAndView("error404");
		view.addObject("HeaderName", " Welcome To FASHION WHEEL ");
		return view;
	}

	@RequestMapping(value = "/swatchbook", method = RequestMethod.GET)
	public ModelAndView swatchbook() {

		ModelAndView view = new ModelAndView("page");
		view.addObject("HeaderName", " Welcome To FASHION WHEEL ");
		return view;
	}

	// access-denied
	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {

		ModelAndView view = new ModelAndView("error");
		view.addObject("HeaderName", " 403- Access-Denied");
		view.addObject("errorTitle", " Not Allow To Access");
		view.addObject("errorDescription", " Get Out From Here");
		return view;
	}

	// To View Single Product

	@RequestMapping(value = "/show/{id}/product")
	public ModelAndView showSingleProduct(@PathVariable int id) {

		ModelAndView mv = new ModelAndView("page");

		Product product = productDAO.get(id);

		// Update Views
		product.setViews(product.getViews() + 1);
		productDAO.update(product);
		// --

		mv.addObject("title", product.getName());
		mv.addObject("product", product);

		mv.addObject("userClickShowProduct", true);

		return mv;

	}

	// logout
	@RequestMapping(value = "/perform-logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		// Invalidates HTTP Session, then unbinds any objects bound to it.
		// Removes the authentication from securitycontext
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "redirect:/login?logout";

	}

}
