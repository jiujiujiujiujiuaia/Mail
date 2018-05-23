package mapper;

import entity.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 87057 on 2018/5/5.
 */
@Repository
public interface IUserMapper {
//    @Insert("insert into customer(username,password) values(#{username},#{password})")
//    public int addUser(User user);
//    @Delete("delete from customer where id=#{id}")
//    public int deleteUser(int id);
//    @Update("update customer set username=#{username},password=#{password} where id=#{id}")
//    public int updateUser(User user);
//    @Select("select * from customer where id=#{id}")
//    public User getUserById(int id);
    @Select("select * from situation where  p_id=#{p_id} and c_id=#{c_id}")
    public Situation getSituationById(@Param("c_id") int c_id,@Param("p_id") int p_id);
    @Update("update situation set count=#{count} where c_id=#{c_id} and p_id=#{p_id}")
    public int updateSitution(@Param("c_id")int c_id,@Param("p_id") int p_id,@Param("count")int count);
    @Select("select *   from admin where username=#{username}")
    public Admin getAdminByName(String username);
    @Select("select * from admin where username=#{username} and password=#{password} ")
    public Admin getAdmin(Admin admin);
    @Update("update customer set c_address=#{c_address} where c_id=#{c_id}")
    public int updateCustomerAddress(int c_id,String c_address);
    @Select("select * from customer where c_id=#{c_id}")
    public Customer getCustomerById(int c_id);
    @Select("select * from product where p_id=#{p_id}")
    public Product findProductById(int p_id);
    @Insert("insert into product(p_name,p_price,p_bargin,p_id,type) values(#{p_name},#{p_price},#{p_bargin},#{p_id},#{type})")
    public int addProduct(Product product);
    @Select("select * from product")
    public ArrayList<Product> getAllProduct( );
    @Insert("insert into customer(c_id,c_name,c_mail,c_password) values(#{c_id},#{c_name},#{c_mail},#{c_password})")
    public int addcustomer(Customer customer);
    @Insert("insert into situation(c_id,p_id,status,size,address,count,p_price,p_name) values(#{c_id},#{p_id},#{status},#{size},#{address},#{count},#{p_price},#{p_name})")
    public int addtocart(Situation situation);
    @Select("select * from situation where c_id=#{c_id}")
    public List<Situation> getsituation(int c_id);
    @Select("select * from customer where c_name=#{c_name} and c_password=#{c_password} ")
    public Customer findUser(Customer customer);
    @Select("select c_id from customer where c_name=#{c_name}")
    public int findIdByName(String c_name);
    @Select("select * from situation where c_id=#{c_id}")
    public Situation findSituationById(int c_id);
    @Select("select * from customer where c_name=#{c_name}")
    public Customer findCustomerByName(String c_name);
//    @Select("select * from customer where c_name=#{c_name} and c_password=#{c_password}")
//    public User findUserByUserName(String username);
//    @Select("select * from customer")
    public List<User> getAllUsers();
}

