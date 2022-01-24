package com.port.lagarto.auction;

import com.port.lagarto.Utils;
import com.port.lagarto.model.AuctionEntity;
import com.port.lagarto.model.AuctionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public List<AuctionVo> selAuctionList(AuctionEntity entity){return  mapper.selAuctionList(entity);}

}
