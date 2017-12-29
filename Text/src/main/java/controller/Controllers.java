package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import service.orders;

@Controller
public class Controllers {
	@Autowired
	orders oorders;
	@RequestMapping(value = "orders", method = RequestMethod.POST)
	public void index(HttpServletRequest httpreq,HttpServletResponse resp) throws IOException{
		String itemid = httpreq.getParameter("itemid");
		String uid = httpreq.getParameter("id");
		String num = httpreq.getParameter("num");
		String orderss = oorders.orderss(itemid, uid, num);
		resp.getWriter().write(orderss);
	}
}
