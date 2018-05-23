package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import javax.servlet.http.HttpSession;

/**
 * Created by 87057 on 2018/5/14.
 */
@Controller
@RequestMapping("/Goods")
public class GoodsController {
    @Autowired
    private UserService userService;
    @RequestMapping("/detail")
    public ModelAndView detail(String idd, String udd, HttpSession session){
        int idds= Integer.parseInt(idd);
        Customer customer = userService.getCustomerById(Integer.parseInt(udd));
        Product product = userService.findProductById(idds);
        ModelAndView mv = new ModelAndView();
        session.setAttribute("product",product);
        if(product != null){
            mv.addObject("customer",customer);
            mv.addObject("product",product);
            mv.setViewName( "goods/detail");
            return mv;
        }
        else {
            mv.setViewName("login/welcome");
            return mv;
        }
    }

    @RequestMapping("/AddAddress")
    public String addAddress(String address,int udd,int idd){

       String url = String.format("redirect:/Goods/detail?idd=%d&udd=%d", idd,udd);
        return url;
    }
}
