package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 87057 on 2018/5/6.
 */
@Controller
@RequestMapping("/mens.html")
public class MenLogin {
    @RequestMapping("/")
    public String clother(){
        return "login/mens";
    }

}
