package com.anas.data;

import com.anas.model.User;

public interface UserDAO {
	public void addUser(User user) throws Exception;
	public User getUser(String userId) throws Exception;
	

}
