package com.service.impl; 
import java.util.List; 
import javax.annotation.Resource; 
import org.springframework.stereotype.Service; 
import com.dao.GoodsMapperXF; 
import com.pojo.Goods;
import com.service.GoodsServiceXF; 
@Service("goodsServiceXF")
public class GoodsServiceImplXF implements GoodsServiceXF {
	@Resource
	private GoodsMapperXF goodsMapperXF; 
	// 获取所有商品信息
	@Override
	public List<Goods> findAllGoods() { 
		return goodsMapperXF.findAllGoods();
	}

	// 热卖推荐
	@Override
	public List<Goods> findGoodsByReMai() {
		return goodsMapperXF.findGoodsByReMai();
	}
	
	// 新品推荐
	@Override
	public List<Goods> findGoodsByXinPin() {
		return goodsMapperXF.findGoodsByXinPin();
	}
	
	// 今日特惠
	@Override
	public List<Goods> findGoodsByTeHui() {
		return goodsMapperXF.findGoodsByTeHui();
	}

	// 根据 gid 获取商品信息
	@Override
	public Goods findGoodByGid(Integer gid) {
		return goodsMapperXF.findGoodByGid(gid);
	}
}
