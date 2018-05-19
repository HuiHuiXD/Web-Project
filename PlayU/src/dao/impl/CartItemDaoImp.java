package dao.impl;

import bean.CartItem;
import dao.CartItemDao;
import org.hibernate.Session;
import util.HibernateSessionFactory;

import java.util.List;

public class CartItemDaoImp implements CartItemDao {
    @Override
    public void save(CartItem cartItem) {
        Session session = HibernateSessionFactory.getSession();
        session.save(cartItem);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(CartItem cartItem) {
        Session session = HibernateSessionFactory.getSession();
        session.delete(cartItem);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public List<CartItem> selectAll() {
        Session session = HibernateSessionFactory.getSession();
        String hql = "from CartItem";
        List<CartItem> list = session.createQuery(hql).list();
        session.getTransaction().commit();
        session.close();
        return list;
    }
}