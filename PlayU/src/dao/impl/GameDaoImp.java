package dao.impl;

import bean.Game;
import dao.GameDao;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateSessionFactory;

import java.util.List;

public class GameDaoImp implements GameDao {
    @Override
    public Game get(int id) {
        //创建session会话
        Session session = HibernateSessionFactory.getSession();
        //从数据库获取id为id的数据转换为对象
        Game game = (Game) session.get(Game.class, id);
        //提交事务
        session.getTransaction().commit();
        //关闭session
        HibernateSessionFactory.closeSession();
        return game;
    }

    @Override
    public void update(Game game) {
        Session session = HibernateSessionFactory.getSession();
        session.update(game);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void save(Game game) {
        Session session = HibernateSessionFactory.getSession();
        //把Game对象转换成一行数据并存入数据库
        session.save(game);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public void delete(Game game) {
        Session session = HibernateSessionFactory.getSession();
        //删除game对应的数据
        session.delete(game);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<Game> selectAll() {
        Session session = HibernateSessionFactory.getSession();
        //查询cartItem对应的表里的所有数据
        String hql = "from CartItem";
        List<Game> list = session.createQuery(hql).list();
        session.getTransaction().commit();
        session.close();
        return list;
    }

    @Override
    public synchronized List<Game> search(String parse) {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from Game where name = ?";
        //设置参数'?'为parse
        Query query = session.createQuery(hql).setParameter(0, parse);
        List<Game> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}