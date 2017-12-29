package dao;

import java.util.Map;

import entity.GoodsInfo;


public interface GoodsInterface {
	/**
	 * 查询商品信息
	 * 传入一个Goods ID
	 * 返回一个Goodsinfo 实体
	 * @param GoodsID
	 * @return
	 */
	GoodsInfo queryGoods(Map<String,Object> map);
	
	/**
	 * 修改Goodsinfo的数据
	 * 返回真假
	 * @param userid
	 * @return
	 */
	boolean updateGoods(Map<String,Object> map);
}
