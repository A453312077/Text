package dao;

import java.beans.IntrospectionException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/**
 * 请求封装
 * @author Administrator
 *
 */
public class Request implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3391365720611331655L;
	//消息集合
	private Map<String,Object> dataMap;
	
	public Request(){
		dataMap=new HashMap<String,Object>();
	}
	/**
	 * 更具name获取数据
	 * @param name
	 * @return
	 */
	public Object getData(String name){
		return dataMap.get(name);
	}
	/**
	 * 更具name删除�?条数�?
	 * @param name
	 */
	public void removeData(String name){
		dataMap.remove(name);
	}
	/**
	 * 添加�?条数�?
	 */
	public void addData(String name,Object data){
		dataMap.put(name, data);
	}
	/**
	 * 获取�?有数�?
	 * @return
	 */
	public Map<String, Object> getDataAll() {
		return dataMap;
	}

	
}

