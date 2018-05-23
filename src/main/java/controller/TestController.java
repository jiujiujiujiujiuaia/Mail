package controller;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 87057 on 2018/5/14.
 */
@Controller
@RequestMapping("/mens.html")
public class TestController {
    @RequestMapping("/")
    public String test(){
        return "index/mens";
    }
}
