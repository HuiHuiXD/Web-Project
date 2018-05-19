/*
 * Copyright (c) PlayU
 * 2018-5-19
 * by YSH
 */

package dao;
import bean.User;

import java.util.List;

public interface UserDao {
    User get(int id);

    void modifyPass(User user, String pass);

    void save(User user);

    void delete(int id);

    List<User> selectAll();

    List<User> search(String parse);
}