package com.port.lagarto.auction;


import com.port.lagarto.model.AuctionEntity;
import com.port.lagarto.model.AuctionVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AuctionMapper {
    int insAuction(AuctionEntity entity);
    AuctionVo selAuctionDetail(AuctionVo vo); //writernm때문에
    List<AuctionVo> selAuctionList(AuctionEntity entity);
    List<AuctionVo> selAuctionListAll(AuctionEntity entity);
}
