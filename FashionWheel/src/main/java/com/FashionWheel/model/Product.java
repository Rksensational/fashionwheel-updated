package com.FashionWheel.model;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;
/*import org.hibernate.validator.constraints.NotBlank;*/
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Component
@Entity
public class Product implements Serializable {

	private static final long serialVersionUID = 1L;

	// private fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String code;
	@NotBlank(message = "Please enter the product name!")
	private String name;
	@NotBlank(message = "Please enter the brand name!")
	private String brand;
	@NotBlank(message = "Please enter the description!")
	private String description;
	@Column(name = "unit_price")
	@Min(value = 1, message = "Please select at least one value!")
	private double unitPrice;
	private int quantity;
	@Column(name = "is_active")
	private boolean active;
	@Column(name = "category_id")
	@JsonIgnore
	private int categoryId;
	@Column(name = "supplier_id")
	@JsonIgnore
	private int supplierId;
	private int purchases;
	private int views;

	@Transient
	private MultipartFile file;

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	// default constructor
	public Product() {

		this.code = "PRD" + UUID.randomUUID().toString().substring(26).toUpperCase();

	}

	// setters and getters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getPurchases() {
		return purchases;
	}

	public void setPurchases(int purchases) {
		this.purchases = purchases;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	// toString for debugging
	@Override
	public String toString() {
		return "Product [id=" + id + ", code=" + code + ", name=" + name + ", brand=" + brand + ", description="
				+ description + ", unitPrice=" + unitPrice + ", quantity=" + quantity + ", active=" + active
				+ ", categoryId=" + categoryId + ", supplierId=" + supplierId + ", purchases=" + purchases + ", views="
				+ views + "]";
	}
}

/*
 * package com.FashionWheel.model;
 * 
 * 
 * import javax.persistence.Entity; import javax.persistence.GeneratedValue;
 * import javax.persistence.GenerationType; import javax.persistence.Id; import
 * javax.persistence.Table;
 * 
 * @Entity
 * 
 * @Table public class Product {
 * 
 * @Id
 * 
 * @GeneratedValue(strategy = GenerationType.IDENTITY) private int Pid; private
 * String Pname; private String Description; private String brand; private
 * String imageURL; private int Pcost; private int quantity; private boolean
 * active = true;
 * 
 * 
 *//**
	 * @return the pid
	 */
/*
 * public int getPid() { return Pid; }
 * 
 *//**
	 * @param pid
	 *            the pid to set
	 */
/*
 * public void setPid(int pid) { Pid = pid; }
 * 
 *//**
	 * @return the brand
	 */
/*
 * public String getBrand() { return brand; }
 * 
 *//**
	 * @param brand
	 *            the brand to set
	 */
/*
 * public void setBrand(String brand) { this.brand = brand; }
 * 
 *//**
	 * @return the quantity
	 */
/*
 * public int getQuantity() { return quantity; }
 * 
 *//**
	 * @param quantity
	 *            the quantity to set
	 */
/*
 * public void setQuantity(int quantity) { this.quantity = quantity; }
 * 
 *//**
	 * @return the active
	 */
/*
 * public boolean isActive() { return active; }
 * 
 *//**
	 * @param active
	 *            the active to set
	 *//*
		 * public void setActive(boolean active) { this.active = active; }
		 * 
		 * public String getPname() { return Pname; }
		 * 
		 * public void setPname(String Pname) { this.Pname = Pname; }
		 * 
		 * public int getPcost() { return Pcost; }
		 * 
		 * public void setPcost(int Pcost) { this.Pcost = Pcost; }
		 * 
		 * public String getDescription() { return Description; }
		 * 
		 * public void setDescription(String description) { Description = description; }
		 * 
		 * public String getImageURL() { return imageURL; }
		 * 
		 * public void setImageURL(String imageURL) { this.imageURL = imageURL; }
		 * 
		 * }
		 */