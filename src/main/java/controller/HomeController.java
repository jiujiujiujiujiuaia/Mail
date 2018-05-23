package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * Created by 87057 on 2018/5/19.
 */
@Controller
@RequestMapping("/Index")
public class HomeController {
    @Autowired
    private UserService userService;
    @RequestMapping("/Home")
    public ModelAndView Home(HttpServletRequest request, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        ArrayList<Product> products = userService.getAllProduct();
        session.setAttribute("product",products);
        StdOut.println(products.get(0));
        if (request.getCookies() != null) {
            Cookie[] c = request.getCookies();
            for (int i = 0; i < c.length; i++) {
                if (c[i].getName().equals("customer")) {
                    Customer customer = userService.getCoustomerByc_name(c[i].getValue());
                    session.setAttribute("customer", customer);
                    mv.addObject("customer", customer);
                    mv.setViewName("index/login");
                    StdOut.println("it is welcome jsp");
                    return mv;
                }
            }
        }
        StdOut.println("there is no any cookies");
        StdOut.println("url: home.jsp");
        mv.setViewName("index/home");
        return mv;
    }
    @RequestMapping("/Login")
    public ModelAndView Login(Customer customer, HttpServletResponse response, HttpSession session) {
        StdOut.println(customer);
        ArrayList<Product> products = userService.getAllProduct();
        session.setAttribute("product",products);
        ModelAndView mv = new ModelAndView();
        customer = userService.login(customer);
        if (customer!=null) {
            Cookie c = new Cookie("customer", customer.getC_name());
            c.setMaxAge(2 * 3600);
            c.setPath("/");
            StdOut.println(customer.getC_address());
            customer.setC_id(userService.getId(customer.getC_name()));
            session.setAttribute("customer", customer);
            response.addCookie(c);

            StdOut.println("login :");
            mv.addObject("customer", customer);//设置模型(一次性的)
            mv.setViewName("index/login");
            return mv;
        }
        else {
            mv.setViewName("index/home");
            return mv;
        }
    }
    @RequestMapping("/LogOut")
    public String LogOut(HttpServletRequest request,HttpServletResponse response,HttpSession session){


        StdOut.println("it is logout");
        Cookie[] c = request.getCookies();
        StdOut.println("logout:"+c.length+" cookies");

        for(int i =0;i<c.length;i++)
        {
            if(c[i].getName().equals("customer"))
            {
                Cookie cookie = new Cookie("customer","logout");
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }
        session.removeAttribute("customer");
        StdOut.println("redirect:home.jsp");
        return "redirect:/Index/Home";
    }
    @RequestMapping("/Register")
    public String register(Customer customer){
        customer.setC_id(0);
        if(userService.addcustomer(customer)){
            StdOut.println("add user successful");
        }


        return "redirect:/Index/Home";
    }
}
