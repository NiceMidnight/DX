package com.itheima.core.web.controller;
import javax.servlet.http.HttpSession;

import com.itheima.common.utils.DaysBetween;
import com.itheima.common.utils.Page;
import com.itheima.core.po.BaseDict;
import com.itheima.core.po.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.itheima.core.po.Customer;
import com.itheima.core.po.User;
import com.itheima.core.service.CustomerService;
import com.itheima.core.service.UserService;
import com.itheima.core.service.impl.CustomerServiceImpl;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * 用户控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	@Autowired
	private CustomerService customerService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(String usercode,String password, Model model, HttpSession session) {
		// 通过账号和密码查询用户
		User user = userService.findUser(usercode, password);
		//通过账号和密码查询顾客
		Customer customer=customerService.findCustomer(usercode, password);
		
		if(user != null){		
			// 将用户对象添加到Session
			session.setAttribute("USER_SESSION", user);
			// 跳转到主页面
			return "redirect:customer/list.action";
		}else if(customer!=null){
			// 将用户对象添加到Session
			session.setAttribute("CUSTOMER_SESSION", customer);
			// 跳转到主页面
			return "redirect:order/list.action";
		} else if (usercode.equals("admin") && password.equals("admin")) {
			session.setAttribute("ADMIN","Super Admin");
			return "redirect:manage/list.action";
		} else{
			model.addAttribute("msg", "账号或密码错误，请重新输入！");
        	 // 返回到登录页面
			return "login";
		}
	}

	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value = "/toCustomer.action")
	public String toCustomer() {
	    return "customer";
	}
	
	/**
	 * 退出登录
	 */
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
	    // 清除Session
	    session.invalidate();
	    // 重定向到登录页面的跳转方法
	    return "redirect:login.action";
	}
	/**
	 * 向用户登陆页面跳转
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String toLogin() {
	    return "login";
	}

	/**
	 *  管理员列表
	 */
	@RequestMapping(value = "/manage/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
					   @RequestParam(defaultValue="10")Integer rows,Integer manageID,
					   String manageName, String manageCode, String managePassword,
					   String manageState, Model model) {
		// 条件查询所有管理员
		Page<User> manages = userService.findManageList(page, rows, manageID,manageName, manageCode, managePassword,manageState);
		model.addAttribute("page3", manages);
		// 添加参数
		model.addAttribute("manageID", manageID);
		model.addAttribute("manageName", manageName);
		model.addAttribute("manageCode", manageCode);
		model.addAttribute("managePassword", managePassword);
		model.addAttribute("manageState", manageState);
		return "manage";
	}

	/**
	 * 创建管理员
	 */
	@RequestMapping("/manage/creation.action")
	@ResponseBody
	public String createManage(User user){

		int rows = userService.createManage(user);
		if (rows > 0 ){
			return "OK";
		}else {
			return "FAIL";
		}
	}
	/**
	 * 删除管理员
	 */
	@RequestMapping("/manage/delete.action")
	@ResponseBody
	public String deleteManage(Integer manage_id){
		int rows = userService.deleteManage(manage_id);
		if (rows > 0 ){
			return "OK";
		}else {
			return "FAIL";
		}
	}
}
