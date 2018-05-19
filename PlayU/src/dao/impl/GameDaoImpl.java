package dao.impl;

import bean.Game;
import dao.GameDao;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateSessionFactory;

import java.util.List;

public class GameDaoImpl implements GameDao {
    @Override
    public Game get(int id) {
        return null;
    }

    @Override
    public void update(Game game) {

    }

    @Override
    public void save(Game game) {
        Session session = HibernateSessionFactory.getSession();
        session.save(game);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public void delete(Game game) {

    }

    @Override
    public List<Game> selectAll() {

        return null;
    }

    @Override
    public List<Game> search(String parse) {
        return null;
    }
}
