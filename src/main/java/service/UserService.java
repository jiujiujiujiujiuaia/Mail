package service;

import edu.princeton.cs.algs4.StdOut;
import entity.*;
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

    public Situation getSituationById(int c_id,int p_id){
        return iUserMapper.getSituationById(c_id,p_id);
    }

    public Customer login(Customer customer) {

        Customer u = iUserMapper.findUser(customer);
        StdOut.println(u.getC_address());
        if (u != null)
            return u;
        else {
            return null;
        }
    }
    public int updateCustomerAddress(int id,String address)
    {
        return iUserMapper.updateCustomerAddress(id,address);
    }
    public List<Situation> showcart(int c_id){
        return iUserMapper.getsituation(c_id);
    }
    public int addcart(Situation situation){
        return iUserMapper.addtocart(situation);
    }
    public int updateSitution(int c_id,int p_id,int count){
        return iUserMapper.updateSitution(c_id,p_id,count);
    }

    public Admin getAdmin(Admin admin)
    {

        return iUserMapper.getAdmin(admin);
    }
    public Admin getAdminByName(String username){
        return iUserMapper.getAdminByName(username);
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
    public Customer getCustomerById(int c_id)
    {
        return iUserMapper.getCustomerById(c_id);
    }
    public Product findProductById(int id){
        return iUserMapper.findProductById(id);
    }
    public ArrayList<Product> getAllProduct(){
        return iUserMapper.getAllProduct();
    }
    public int addProduct(Product product){
        int i = iUserMapper.addProduct(product);
        return i;
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

