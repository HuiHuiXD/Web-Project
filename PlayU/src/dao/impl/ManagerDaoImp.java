/*
 * Copyright (c) PlayU
 * 2018-5-19
 * by YSH
 */

package dao.impl;

import bean.Manager;
import bean.User;
import dao.UserDao;
import org.hibernate.Session;
import org.hibernate.query.Query;
import util.HibernateSessionFactory;

import java.util.List;

public class ManagerDaoImp implements UserDao {
    @Override
    public User get(int id) {
        Session session = HibernateSessionFactory.getSession();
        Manager manager = (Manager) session.get(Manager.class, id);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
        return manager;
    }

    @Override
    public void modifyPass(User manager, String pass) {
        Session session = HibernateSessionFactory.getSession();
        session.update(manager);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void save(User manager) {
        Session session = HibernateSessionFactory.getSession();
        session.save(manager);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public void delete(int id) {
        Session session = HibernateSessionFactory.getSession();
        Manager user = session.get(Manager.class,id);
        session.delete(user);
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
    }

    @Override
    public List<User> selectAll() {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from Manager";
        List<User> list = session.createQuery(hql).list();
        session.getTransaction().commit();
        HibernateSessionFactory.closeSession();
        return list;
    }

    @Override
    public List<User> search(String parse) {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from Manager where name like ?";
        //设置参数'?'为parse
        Query query = session.createQuery(hql).setParameter(0, parse);
        List<User> list = query.list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}
