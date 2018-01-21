package assessment.sweetitect.riadmahmudanik.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import assessment.sweetitect.riadmahmudanik.model.Product;
import assessment.sweetitect.riadmahmudanik.Service.ProductService;

@Controller
public class MainController {
	
	@Autowired
	private ProductService productService;

	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
	
	@GetMapping("/all-products")
	public String allTasks(HttpServletRequest request){
		request.setAttribute("products", productService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	
	@GetMapping("/new-products")
	public String newTask(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "index";
	}
	
	@PostMapping("/save-product")
	public String saveTask(@ModelAttribute Product product, BindingResult bindingResult, HttpServletRequest request){
		productService.save(product);
		request.setAttribute("products", productService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	
	@GetMapping("/update-product")
	public String updateTask(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("product", productService.findproduct(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}
	
	@GetMapping("/delete-product")
	public String deleteTask(@RequestParam int id, HttpServletRequest request){
		productService.delete(id);
		request.setAttribute("products", productService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
}