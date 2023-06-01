package com.itheima.core.service;
import com.itheima.common.utils.Page;
import com.itheima.core.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号和密码查询用户
	public User findUser(String usercode,String password);

	public Page<User> findManageList(Integer page,Integer rows, Integer manageID,String manageName,
									 String manageCode, String managePassword, String manageState);
	public int createManage(User user);
	public int deleteManage(Integer manage_id);
}
