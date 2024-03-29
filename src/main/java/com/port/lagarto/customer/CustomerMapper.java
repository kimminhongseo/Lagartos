package com.port.lagarto.customer;

import com.port.lagarto.model.CustomerDto;
import com.port.lagarto.model.CustomerEntity;
import com.port.lagarto.model.CustomerVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CustomerMapper {
    int insCustomer(CustomerEntity entity);
    List<CustomerVo> selCustomerList(CustomerDto dto);
    CustomerVo selCustomerDetail(CustomerDto dto);
}
