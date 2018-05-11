package controller;
import javax.servlet.http.*;

import com.fasterxml.jackson.core.format.InputAccessor;
import com.sun.deploy.net.HttpResponse;
import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Product;
import entity.Situation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 87057 on 2018/5/5.
 */
@Controller
@RequestMapping("/Login")
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/")
    public ModelAndView index(HttpServletRequest request,HttpSession session) {
        ModelAndView mv = new ModelAndView();
        ArrayList<Product> products = userService.getAllProduct();
        session.setAttribute("product",products);
        if (request.getCookies() != null) {
            Cookie[] c = request.getCookies();
            for (int i = 0; i < c.length; i++) {
                if (c[i].getName().equals("customer")) {
                    StdOut.println("key is" + c[i].getName());
                    StdOut.println("value is" + c[i].getValue());
                    StdOut.println("maxage is " + c[i].getMaxAge());
                    Customer customer = userService.getCoustomerByc_name(c[i].getValue());
                    StdOut.println("test:" + customer);
                    session.setAttribute("customer", customer);
                    mv.addObject("customer", customer);
                    mv.setViewName("login/welcome");
                    StdOut.println("it is welcome jsp");
                    return mv;

                }
            }

        }

            StdOut.println("there is no any cookies");
            StdOut.println("url: index.jsp");
            mv.setViewName("login/index");
            return mv;
    }
    @RequestMapping("/login")
    public ModelAndView login(Customer customer, HttpServletResponse response,HttpSession session) {
        StdOut.println(customer);
        ModelAndView mv = new ModelAndView();
        if (userService.login(customer)) {
            Cookie c = new Cookie("customer", customer.getC_name());
            c.setMaxAge(2 * 3600);
            c.setPath("/");

            customer.setC_id(userService.getId(customer.getC_name()));
            session.setAttribute("customer", customer);
            response.addCookie(c);

            StdOut.println("login :");
            StdOut.println("name is"+c.getName());
            StdOut.println("value is"+c.getValue());
            StdOut.println("maxage is"+c.getMaxAge());

            mv.addObject("customer", customer);//设置模型(一次性的)
            mv.setViewName("login/welcome");
            return mv;
        }
        else if(customer.getC_name().equals("admin")&&customer.getC_password().equals("123456")){
            mv.setViewName("manage/manage");
            return mv;

        }
        else {
            mv.setViewName("login/index");
            return mv;
        }
    }
    @RequestMapping("/register")
    public String register(Customer customer){
        customer.setC_id(0);
        if(userService.addcustomer(customer)){
            StdOut.println("add user successful");
        }


        return "redirect:/Login/";
    }





//        else {
//            if(password.equals("")&&username.equals("")){
//                mv.setViewName("login/index");
//                return mv;
//                //怎么样才可以在第一次输入错的用户名点击刷新页面的时候没有错误提示呢
//           }
//            else {
//                String errorMsg = "用户名或者密码错误";
//                mv.addObject("errorMsg",errorMsg);
//                mv.setViewName("login/index");
//                return mv;
//            }
//
//        }
//
//
//    }


//    @RequestMapping(value="/login",method = RequestMethod.POST)
//    //这种办法就可以改变地址栏的地址了
//    public String login(TestUser user, HttpSession session){
//        if(user.getUsername().equals("test")) {
//            session.setAttribute("user", user);
//            return "redirect:/Login/Welcome";
//        }else {
//            if(user.getUsername().equals("")&&user.getPassword().equals("")){
//                return "redirect:/Login/";
//            }
//            else {
//                session.setAttribute("errorMsg", "用户名或者密码错！");
//                return "redirect:/Login/";
//                //注意有这个反斜杠
//            }
//        }
//    }

        @RequestMapping("/Welcome")
        public String welcome () {
            return "login/welcome";
        }


    }

