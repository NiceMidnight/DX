package com.itheima.core.service.impl;
import com.itheima.common.utils.Page;
import com.itheima.core.po.Customer;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	// 注入UserDao
	@Autowired
	private UserDao userDao;
	// 通过账号和密码查询用户
	@Override
	public User findUser(String usercode, String password) {
		User user = this.userDao.findUser(usercode, password);
		return user;
	}

	@Override
	public Page<User> findManageList(Integer page, Integer rows,Integer manageID, String manageName, String manageCode, String managePassword, String manageState) {
		//创建用户对象
		User user = new User();
		//判断管理员名称
		if(StringUtils.isNotBlank(manageName)){
			user.setUser_name(manageName);
		}
		//判断管理员账号
		if (StringUtils.isNotBlank(manageCode)){
			user.setUser_code(manageCode);
		}
		//判断管理员密码
		if (StringUtils.isNotBlank(managePassword)){
			user.setUser_password(managePassword);
		}
		//判断管理员状态
		if (StringUtils.isNotBlank(manageState)){
			user.setUser_state(Integer.valueOf(manageState));
		}
		//当前页
		user.setStart((page-1)*rows);
		//每页数
		user.setRows(rows);
		//查询管理员列表
		List<User> users = userDao.selectManageList(user);
		//查询管理员列表总记录数
		Integer count = userDao.selectManageListCount(user);
		//创建Page返回对象
		Page<User> result = new Page<>();
		result.setPage(page);
		result.setRows(users);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}

	@Override
	public int createManage(User user) {
		return userDao.createManage(user);
	}

	@Override
	public int deleteManage(Integer manage_id) {
		return userDao.deleteManage(manage_id);
	}
}
