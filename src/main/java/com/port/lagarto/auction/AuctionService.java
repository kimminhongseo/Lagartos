package com.port.lagarto.auction;

import com.port.lagarto.Utils;
import com.port.lagarto.model.AuctionCategoryEntity;
import com.port.lagarto.model.AuctionDto;
import com.port.lagarto.model.AuctionEntity;
import com.port.lagarto.model.AuctionVo;
import org.apache.tiles.Attribute;
import org.apache.tiles.AttributeContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Service
public class AuctionService {

    @Autowired
    private AuctionMapper mapper;


    @Autowired
    private Utils utils;


    public int insAuction(AuctionEntity entity){
        return mapper.insAuction(entity);
    }
    public List<AuctionVo> selAuctionList(AuctionDto dto){return  mapper.selAuctionList(dto);}
    public List<AuctionVo> selAuctionListAll(AuctionDto dto){return  mapper.selAuctionListAll(dto);}

    public AuctionVo selAuctionDetail (AuctionDto dto){return mapper.selAuctionDetail(dto);}

    public List<AuctionCategoryEntity> auctionMenuList(){return  mapper.selAuctionCategoryList();}



    }




