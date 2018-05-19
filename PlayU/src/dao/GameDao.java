/*
 * Copyright (c) PlayU
 * 2018-5-19
 * by YSH
 */

package dao;

import bean.Game;

import java.util.List;

public interface GameDao {
    public Game get(int id);

    public void update(Game game);

    public void save(Game game);

    public void delete(Game game);

    public List<Game> selectAll();

    public List<Game> search(String parse);
}