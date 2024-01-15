package com.example.dz3.controller;

import com.example.dz3.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductRepository productRepository;

    @Autowired
    public ProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/fetch-product")
    @ResponseBody
    public String fetchProduct(@RequestParam String name) {
        return productRepository.getProductNames(name).toString();
    }
}
