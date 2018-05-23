package entity;

import org.springframework.stereotype.Component;

/**
 * Created by 87057 on 2018/5/5.
 */
@Component
public class Situation {
    private int c_id;
    private int p_id;
    private String status;
    private int size;
    private String address;
    private int count;
    private int p_price;
    private String p_name;

    public int getP_price() {
        return p_price;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public void setP_price(int p_price) {
        this.p_price = p_price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public int getP_id() {
        return p_id;
    }

    public String getStatus() {
        return status;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    @Override
    public String toString(){
        return "c_id: "+c_id+"p_id: "+p_id+"status: "+status+"size  "+size+"address:  "+address+"count:  "+count+"price  "+p_price+"name  "+p_name;
    }
}

