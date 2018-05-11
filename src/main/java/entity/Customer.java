package entity;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 87057 on 2018/5/5.
 */
@Component
public class Customer {

    private String c_mail;

    private String c_name;

    private String c_password;

    private int c_id;

    public int getC_id() {
        return c_id;
    }

    public String getC_mail() {
        return c_mail;
    }

    public String getC_name() {
        return c_name;
    }

    public String getC_password() {
        return c_password;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public void setC_mail(String c_mail) {
        this.c_mail = c_mail;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public void setC_password(String c_password) {
        this.c_password = c_password;
    }
    @Override
    public String toString(){
        return "c_name"+c_name+"c_password"+c_password;
    }

}
