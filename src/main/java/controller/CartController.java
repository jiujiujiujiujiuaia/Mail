package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Product;
import entity.Situation;
import javafx.scene.chart.AxisBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 87057 on 2018/5/8.
 */
@Controller
@RequestMapping("/Cart")
public class CartController {
    @Autowired
    private UserService userService;
    @RequestMapping("/test")
    public String test(){
        return "cart/index";
    }
    @RequestMapping("/CartPage")
    public ModelAndView showcart(HttpServletRequest request, HttpSession session){
        Customer customer = (Customer) session.getAttribute("customer");
        ModelAndView mv = new ModelAndView();
        if(customer ==null){
            StdOut.println("customer has been not found in /cart/show");
            mv.setViewName("index/home");
            return mv;
        }
        else {

            List<Situation> situations = userService.showcart(customer.getC_id());
            mv.addObject("cartsituation",situations);
            mv.setViewName("cart/cartpage");
            return mv;
        }
    }
    @RequestMapping("/AddCart")
    public String addcart(int p_id,int c_id,int size,String address,int count,String p_name,int p_price)
    {
            StdOut.println(p_id);
            StdOut.println(c_id);
            Situation situations = userService.getSituationById(c_id,p_id);
            StdOut.println("here?");
            String url = "redirect:http://localhost:8081/Goods/detail?idd=%d&udd=%d";
            url = String.format(url,p_id,c_id);
            if(situations == null){
            StdOut.println("it id addcart");
            Situation situation = new Situation();
            String statue = "未发货";
            situation.setStatus(statue);
            situation.setC_id(c_id);
            situation.setP_id(p_id);
            situation.setSize(size);
            situation.setAddress(address);
            situation.setCount(count);
            situation.setP_price(p_price);
            situation.setP_name(p_name);
            StdOut.println(situation);
            int a = userService.addcart(situation);
                return url;
            }
            else{
                int a = userService.updateSitution(c_id,p_id,situations.getCount()+count);
                return url;
            }


    }

}
