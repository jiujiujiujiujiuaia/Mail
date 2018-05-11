package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Situation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 87057 on 2018/5/8.
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    private UserService userService;
    @RequestMapping("/show")
    public String showcart(HttpServletRequest request,HttpSession session){
        Customer customer = (Customer) session.getAttribute("customer");
        if(customer ==null){
            StdOut.println("customer has been not found in /cart/show");
            return "cart/index";
        }
        else {
            StdOut.println("customer has been found in /cart/show");
            StdOut.println(customer.getC_id());

            List<Situation> situations = userService.showcart(customer.getC_id());
            if(situations.size()==0){
                StdOut.println("cart has not been found");
            }
            else StdOut.println(situations.get(0));
            session.setAttribute("situation", situations);

            return "cart/index";
        }
    }
    @RequestMapping("/addcart")
    public String addcart(Situation situation,HttpServletRequest request,HttpSession session){
        Customer customer = (Customer) session.getAttribute("customer");
        if(customer == null){
            StdOut.println("customer has not been found");
            return "login/index";
        }
        else {
            situation.setC_id(customer.getC_id());
            String statue = "未发货";
            situation.setStatus(statue);
            int a = userService.addcart(situation);
            return "login/welcome";
        }
    }
}
