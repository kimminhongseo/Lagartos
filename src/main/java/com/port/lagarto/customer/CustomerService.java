package com.port.lagarto.customer;

import com.port.lagarto.Utils;
import com.port.lagarto.model.CustomerDto;
import com.port.lagarto.model.CustomerEntity;
import com.port.lagarto.model.CustomerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CustomerService {

    @Autowired
    private CustomerMapper mapper;

    @Autowired
    private Utils utils;

    public int insCustomer(CustomerEntity entity) {
        entity.setIuser(utils.getLoginUserPk());
        return mapper.insCustomer(entity);
    }

    public List<CustomerVo> selCustomerList(CustomerDto dto) {
        return mapper.selCustomerList(dto);
    }

    public CustomerVo selCustomerDetail(CustomerDto dto) {
        CustomerVo detail = mapper.selCustomerDetail(dto);
        return detail;
    }
}
