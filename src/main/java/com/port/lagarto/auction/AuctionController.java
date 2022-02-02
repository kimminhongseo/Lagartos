package com.port.lagarto.auction;

import com.port.lagarto.Const;
import com.port.lagarto.model.AuctionDto;
import com.port.lagarto.model.AuctionEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auction")
public class AuctionController {

    @Autowired
    private AuctionService service;

    @GetMapping("/write")
    public void write(){}

    @PostMapping("/write")
    public String writeProc(AuctionEntity entity){
        int result = service.insAuction(entity);
        System.out.println(result); //성공하면 1
        return "redirect:/auction/list/" + entity.getIcategory(); //경매등록 눌렀을때 가는곳
        //
    }
    //todo: 확인해보기 list에 전체적인 내용
    @GetMapping("/list")
    public String list(AuctionDto dto, Model model){

        model.addAttribute("list",service.selAuctionListAll(dto));
        return "auction/list";
    }


    @GetMapping("/list/{icategory}")
    public String list(@PathVariable int icategory, AuctionDto dto, Model model){
        model.addAttribute("icategory");
        model.addAttribute("list",service.selAuctionList(dto));
        dto.setIcategory(icategory);
        return "auction/list";

    }









}
