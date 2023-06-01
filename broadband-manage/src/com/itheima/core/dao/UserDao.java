package com.itheima.core.dao;
import com.itheima.core.po.Customer;
import org.apache.ibatis.annotations.Param;
import com.itheima.core.po.User;

import java.util.List;

/**
 * 用户DAO层接口
 */
public interface UserDao {
	/**
	 * 通过账号和密码查询用户
	 */
	public User findUser(@Param("usercode") String usercode,
			                @Param("password") String password);
	public List<User> selectManageList(User user);
	public Integer selectManageListCount(User user);
	public int createManage(User user);
	public int deleteManage(Integer manage_id);
}
