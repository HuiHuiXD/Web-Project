/*
 * Copyright (c) PlayU
 * 2018-5-19
 * by YSH
 */

package dao;

import bean.CartItem;

import java.util.List;

public interface CartItemDao {
    public void save(CartItem cartItem);

    public void delete(CartItem cartItem);

    public List<CartItem> selectAll();
}