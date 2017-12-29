package dao;

import java.util.Map;

import entity.Userinfo;
/**
 * 用户业务
 * @author 李剑章
 *
 */
public interface UserInterface {
	/**
	 * 查询用户
	 * 传入一个user ID
	 * 返回一个userinfo 实体
	 * @param userid
	 * @return
	 */
	Userinfo queryUser(Map<String,Object> map);
	/**
	 * 修改userinfo的数据
	 * 返回真假
	 * @param userid
	 * @return
	 */
	boolean updateUser(Map<String,Object> map);
}
