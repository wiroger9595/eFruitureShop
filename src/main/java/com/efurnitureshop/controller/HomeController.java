package com.efurnitureshop.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.persistence.criteria.Path;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.efurnitureshop.dao.ProductDAO;
import com.efurnitureshop.model.Product;

@Controller
public class HomeController {
	
	private java.nio.file.Path path;
	
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/frontView/productList")
	public String getProducts(Model model) {
		
		List<Product> products = productDAO.getAllProducts();
		
		// 只有一個才可以用下面方法
		//Product products = productList.get(0);
		
		
		model.addAttribute("products", products);

		return "frontView/productList";
	}
	
	
	@RequestMapping("/frontView/productList/viewProductDetail/{productId}")
	public String viewProductDetail(@PathVariable String productId, Model model) throws IOException {
		
		Product product = productDAO.getProductById(productId);
		
		model.addAttribute(product);
		
		return "frontView/viewProductDetail";
	}
	
	
	@RequestMapping("/adminView/admin")
	public String adminPage() {
		
		return "adminView/admin";
	}
	
	
	
	@RequestMapping("/adminView/admin/productInventory")
	public String productInventory(Model model) {
		
		List<Product> products = productDAO.getAllProducts();
		model.addAttribute("products", products);
		
		return "adminView/productInventory";
	}
	
	
	@RequestMapping("/adminView/admin/productInventory/addProduct")
	public String addProduct(Model model) {
		
		Product product = new Product();
		product.setProductCategory("instrument");
		product.setProductCondition("new");
		product.setProductStatus("active");
		
		model.addAttribute("product", product);
		
		return "adminView/addProduct";
	}
	
	
	@RequestMapping(value = "/adminView/admin/productInventory/addProduct", method=RequestMethod.POST)
	 public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "adminView/addProduct";
		}
		
        productDAO.addProduct(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");


        if (productImage != null && !productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Product image saving failed", e);
            }
        }
        
        
		return "redirect:/adminView/admin/productInventory";
		
		
	}
	
	
	@RequestMapping("/adminView/admin/productInventory/deleteProduct/{id}")
	public String deleteProduct(@PathVariable String id, Model model, HttpServletRequest request) {
		
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + id + ".png");
		
		
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		productDAO.deleteProduct(id);
		
		return "redirect:/adminView/admin/productInventory";
	}
	
	@RequestMapping("adminView/admin/productInventory/editProduct/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		
		Product product = productDAO.getProductById(id);
		
		model.addAttribute(product);
		
		return "adminView/editProduct";
	}
	
	
	@RequestMapping(value = "/adminView/admin/productInventory/editProduct", method = RequestMethod.POST)
	public String editProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model, HttpServletRequest request) {
		
		
		if(result.hasErrors()) {
			return "adminView/editProduct";
		}
		
		MultipartFile productImage = product.getProductImage();
		
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		
		path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");
		
		if(productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(path.toString()));
			} catch (Exception e) {

				throw new RuntimeException("Product image saving failed, e");
			}
		}
		productDAO.editProduct(product);
		
		return "redirect:/adminView/admin/productInventory";
		
	}


}
