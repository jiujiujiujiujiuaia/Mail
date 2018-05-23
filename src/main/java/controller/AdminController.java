package controller;

import edu.princeton.cs.algs4.StdOut;
import entity.Admin;
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
 * Created by 87057 on 2018/5/11.
 */
@Controller
@RequestMapping("/Admin")
public class AdminController {
    @Autowired
    private UserService userService;
    @RequestMapping("/Add")
    public String addProduct(){
        return "admin/add";
    }
    @RequestMapping("/AddProduct")
    public String addProduct(Product product,HttpSession session){
        product.setP_id((int)session.getAttribute("lastid"));
        product.setP_bargin(1);
        int i = userService.addProduct(product);
        return "redirect:/Admin/";
    }
    @RequestMapping("/Edit")
    public String editproduct(int idd){
        return "admin/edit";
    }


    @RequestMapping("/")
    public ModelAndView admin(HttpServletRequest request,HttpSession session)
    {
        ArrayList<Product> products = userService.getAllProduct();
        session.setAttribute("lastid",products.size()+1);
        ModelAndView mv = new ModelAndView();
       for(Cookie cookie:request.getCookies()){
           if(cookie.getName().equals("admin")){

               Admin admin = userService.getAdminByName(cookie.getValue());
               session.setAttribute("admin",admin);
               mv.addObject("agoods",products);
               mv.setViewName("admin/index");
               return mv;
           }
       }
        mv.setViewName("admin/login");
        return mv;
    }
    @RequestMapping("OrderList")
    public String OrderList(){
        return "admin/list";
    }

    @RequestMapping("/Login")
    public ModelAndView login(Admin admin, HttpSession session, HttpServletResponse response){

        Admin admins = userService.getAdmin(admin);
        ModelAndView mv = new ModelAndView();
        if(admin!=null){
            Cookie c = new Cookie("admin",admins.getUsername());
            session.setAttribute("admin",admins);
            c.setMaxAge(2 * 3600);
            c.setPath("/");
            response.addCookie(c);
            ArrayList<Product> products = userService.getAllProduct();
            session.setAttribute("lastid",products.size()+1);
            mv.addObject("agoods",products);
            mv.setViewName("admin/index");
        }
        else {
            mv.setViewName("admin/login");
        }
       return mv;
    }
    @RequestMapping("/LogOut")
    public String logout(HttpServletRequest request,HttpServletResponse response,HttpSession session){
        for(Cookie cookie:request.getCookies()){
            if(cookie.getName().equals("admin")){
                Cookie cookies = new Cookie("admin","logout");
                cookies.setMaxAge(0);
                cookies.setPath("/");
                response.addCookie(cookies);
                session.removeAttribute("admin");
            }
        }
        return "admin/login";
    }

}
