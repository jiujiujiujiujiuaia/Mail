package service;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Product;
import entity.Situation;
import entity.User;
import mapper.IUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 87057 on 2018/5/5.
 */
@Service
public class UserService {
    //此处变量是接口类型，不加@Autowired
    private IUserMapper iUserMapper;
    @Autowired
    public UserService(IUserMapper iUserMapper)
    {

        this.iUserMapper = iUserMapper;
    }

    public boolean login(Customer customer) {

        Customer u = iUserMapper.findUser(customer);
        if (u != null)
            return true;
        else {
            return false;
        }
    }
    public List<Situation> showcart(int c_id){
        return iUserMapper.getsituation(c_id);
    }
    public int addcart(Situation situation){
        return iUserMapper.addtocart(situation);
    }
    public Customer getCoustomerByc_name(String c_name){
        return iUserMapper.findCustomerByName(c_name);
    }
    public Situation getSituation(int c_id){
        return iUserMapper.findSituationById(c_id);
    }
    public int getId(String c_name){
        return iUserMapper.findIdByName(c_name);
    }
//    public tatic void main(String[] args){
//        Customer customer = new Customer();
//        customer.
//    }
    public boolean addcustomer(Customer customer){
        Customer u = iUserMapper.findCustomerByName(customer.getC_name());
        if(u!=null){
            StdOut.println("customer has been found");
            return false;
        }
        else {
            int a = iUserMapper.addcustomer(customer);
            return true;
        }
    }
    public ArrayList<Product> getAllProduct(){
        return iUserMapper.getAllProduct();
    }

//    @Transactional
//    public boolean register(User user) {
//        int cnt = iUserMapper.addUser(user);
//        if (cnt != 0)
//            return true;
//        else {
//            return false;
//        }
//
//    }
//
//    public boolean findUser(String username) {
//        User u = iUserMapper.findUserByUserName(username);
//        if (u != null)
//            return true;
//        else {
//            return false;
//        }
//    }

}

