package mapper;

import entity.Customer;
import entity.Product;
import entity.Situation;
import entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
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
    @Select("select * from product")
    public ArrayList<Product> getAllProduct( );
    @Insert("insert into customer(c_id,c_name,c_mail,c_password) values(#{c_id},#{c_name},#{c_mail},#{c_password})")
    public int addcustomer(Customer customer);
    @Insert("insert into situation(c_id,p_id,status) values(#{c_id},#{p_id},#{status})")
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

