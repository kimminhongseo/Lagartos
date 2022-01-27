package com.port.lagarto.customer;

import com.port.lagarto.model.CustomerDto;
import com.port.lagarto.model.CustomerEntity;
import com.port.lagarto.model.CustomerVo;
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
    public CustomerService service;

    @GetMapping("/list/{board_num}")
    public String list(@PathVariable int board_num, CustomerDto dto, Model model) {
        model.addAttribute("board_num", board_num);
        model.addAttribute("list", service.selCustomerList(dto));
        dto.setBoard_type(board_num);
        return "customer/list";
    }

    @GetMapping("/write")
    public void write() {}

    @PostMapping("/write")
    public String writeProc(CustomerEntity entity) {
        int result = service.insCustomer(entity);
        return "redirect:/customer/list/" + entity.getBoard_type();
    }

    @GetMapping("/detail")
    public void detail(CustomerDto dto, Model model) {
        CustomerVo vo = service.selCustomerDetail(dto);
        model.addAttribute("data", vo);
    }

}
