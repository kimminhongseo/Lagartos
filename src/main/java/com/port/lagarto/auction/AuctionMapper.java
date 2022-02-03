package com.port.lagarto.auction;


import com.port.lagarto.model.AuctionCategoryEntity;
import com.port.lagarto.model.AuctionDto;
import com.port.lagarto.model.AuctionEntity;
import com.port.lagarto.model.AuctionVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AuctionMapper {
    int insAuction(AuctionEntity entity);

    AuctionVo selAuctionDetail(AuctionDto dto); //writernm때문에
    List<AuctionVo> selAuctionList(AuctionDto dto);
    List<AuctionVo> selAuctionListAll(AuctionDto dto);


    List<AuctionCategoryEntity> selAuctionCategoryList();
}
