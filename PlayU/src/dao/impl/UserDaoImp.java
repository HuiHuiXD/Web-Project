package dao.impl;

import bean.User;
import dao.UserDao;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateSessionFactory;

import java.util.List;

public class UserDaoImp implements UserDao {
    @Override
    public User get(int id) {
        Session session = HibernateSessionFactory.getSession();
        User user = (User) session.get(User.class, id);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
        return user;
    }

    @Override
    public void modifyPass(User user, String pass) {
        Session session = HibernateSessionFactory.getSession();
        session.update(user);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void save(User user) {
        Session session = HibernateSessionFactory.getSession();
        session.save(user);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public void delete(int id) {
        Session session = HibernateSessionFactory.getSession();
        User user =session.get(User.class,id);
        session.delete(user);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public List<User> selectAll() {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from User";
        List<User> list = session.createQuery(hql).list();
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    @Override
    public List<User> search(String parse) {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from Game where name like %?%";
        //设置参数'?'为parse
        Query query = session.createQuery(hql).setParameter(0,parse);
        List<User> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}