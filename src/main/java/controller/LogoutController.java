package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Customer;
import entity.Situation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by 87057 on 2018/5/6.
 */
@Controller
@RequestMapping("logout.html")
public class LogoutController {
    @Autowired
    private UserService userServices;
    @RequestMapping("/")
    public String Logout(HttpServletRequest request,HttpServletResponse response){

//        Cookie c1 = new Cookie("user","test");
//        c1.setMaxAge(0);
//        response.addCookie(c1);
        StdOut.println("it is logout");
        Cookie[] c = request.getCookies();
        StdOut.println("logout:"+c.length+" cookies");
       for(int i =0;i<c.length;i++){
            if(c[i].getName().equals("customer")) {
               Cookie cookie = new Cookie("customer","logout");
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
//           if(c[i].getName().equals("JSESSIONID")){
//               Cookie cookie = new Cookie("JSESSIONID","logout");
//               cookie.setMaxAge(0);
//               cookie.setPath("/");//这个path太关键了 貌似一个cookie的认证是通过path和key 同时确认是不是同一个cookie
//               response.addCookie(cookie);
//           }
       }
        for(int i =0;i<c.length;i++){
            StdOut.println("cookies name is" + c[i].getName());
            StdOut.println("cookies value is" + c[i].getValue());
            StdOut.println("cookie maxage  is" + c[i].getMaxAge());
        }
        StdOut.println("url:index.jsp");
        return "login/index";
    }

    @RequestMapping("/login")
    public ModelAndView login(Customer customer, HttpServletResponse response,HttpSession session) {
        ModelAndView mv = new ModelAndView();

        if (userServices.login(customer)) {
            Cookie c = new Cookie("customer", customer.getC_name());
            c.setMaxAge(2 * 3600);
            c.setPath("/");

            customer.setC_id(userServices.getId(customer.getC_name()));
            session.setAttribute("customer", customer);
            response.addCookie(c);
            mv.addObject("customer", customer);//设置模型(一次性的)
            mv.setViewName("login/welcome");
            StdOut.println("it is logout.html/login");
            return mv;
        }
        else {
            mv.setViewName("login/index");
            return mv;
        }
    }
}
