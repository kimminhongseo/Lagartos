package com.port.lagarto.customer;

import com.port.lagarto.model.CustomerDto;
import com.port.lagarto.model.CustomerEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService service;

    @GetMapping("/list/{board_type}")
    public String list(@PathVariable int board_type, CustomerDto dto, Model model) {
        model.addAttribute("board_type", board_type);
        model.addAttribute("list", service.selCustomerList(dto));
        dto.setBoard_type(board_type);
        return "customer/list";
    }

    @GetMapping("/write")
    public void write() {}

    @PostMapping("/write")
    public String writeProc(CustomerEntity entity) {
        int result = service.insCustomer(entity);
        return "redirect:/customer/list/" + entity.getBoard_type();
    }

}
