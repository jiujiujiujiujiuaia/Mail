package controller;

import com.fasterxml.jackson.core.format.InputAccessor;
import edu.princeton.cs.algs4.StdOut;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import service.UserService;

/**
 * Created by 87057 on 2018/5/5.
 */
@Controller
@RequestMapping("/Account")
public class AccountController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String index() {
        return "account/login";
    }

    @RequestMapping("/Welcome")
    public String welcome() {
        return "account/welcome";
    }

//    @RequestMapping("/Login")
//    public String login(User user, RedirectAttributes redirectAttributes) {
//
//        boolean flag = userService.login(user);
//        if (flag) {
//            redirectAttributes.addFlashAttribute("user", user);
//            return "redirect:/Account/Welcome";
//        } else {
//            redirectAttributes.addFlashAttribute("errorMsg", "用户名或密码错！");
//            return "redirect:/Account/";
//        }
//    }
//
//    @RequestMapping("/Register")
//    public String register(User user,RedirectAttributes redirectAttributes){
//        boolean flag=userService.findUser(user.getUsername());
//        if(flag) {
//            redirectAttributes.addFlashAttribute("errorMsg","用户已存在");
//            return "redirect:/Account/";
//        }
//        else {
//            boolean add_flag=userService.register(user);
//            if(add_flag) {
//                redirectAttributes.addFlashAttribute("user",user);
//                return "redirect:/Account/Welcome";
//            }
//            redirectAttributes.addFlashAttribute("errorMsg","注册失败");
//            return "redirect:/Account/";
//        }
//    }

}
