package com.test.order_food.controllers;

import com.test.order_food.entity.Image;
import com.test.order_food.entity.Product;
import com.test.order_food.entity.User;
import com.test.order_food.repository.ImageRepository;
import com.test.order_food.repository.ProductRepository;
import com.test.order_food.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/GetShoppings")
public class MainController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    ImageRepository imageRepository;

    @Autowired
    UserRepository userRepository;


    @GetMapping
    public String allShoppingsView(Model model) {

        return "main/basic";
    }

    @GetMapping("/Online-Store")
    public String onlineStoreView(Model model) {
        List<Product> productList = productRepository.findAll();
        List<Integer> collect = productList.stream().map(product -> product.getId()).collect(Collectors.toList());

        model.addAttribute("allShoppings", productList);
        return "main/internet-store";
    }

    @GetMapping("/Online-store/{id}")
    public String productByIdView(@PathVariable("id") int id, Model model) {
        List<Image> ImagesByProductId = imageRepository.findAllByProductId(id);
        Product productById = productRepository.findById(id).get();
        model.addAttribute("productImages", ImagesByProductId);
        model.addAttribute("product", productById);
        return "products/product";
    }

    @GetMapping("/registration")
    public String loginView(Model model) {
        model.addAttribute("user", new User());
        return "accounts/account-registration";
    }

    @PostMapping("/save")
    public String registerAccount(@ModelAttribute("user") User user) {
        User save = userRepository.save(user);
        return "redirect:/GetShoppings";
    }
}
