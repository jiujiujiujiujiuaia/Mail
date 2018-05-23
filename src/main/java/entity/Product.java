package entity;

import edu.princeton.cs.algs4.StdOut;

/**
 * Created by 87057 on 2018/5/8.
 */
public class Product {
    private String p_name;
    private String p_price;
    private int p_id;
    private int p_bargin;
    private String type;
    private String p_src ;
    private String p_descirbtion;

    public String getP_descirbtion() {
        return p_descirbtion;
    }

    public String getP_src() {
        return p_src;
    }

    public void setP_descirbtion(String p_descirbtion) {
        this.p_descirbtion = p_descirbtion;
    }

    public void setP_src(String p_src) {
        this.p_src = p_src;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public int getP_id() {
        return p_id;
    }

    public int getP_bargin() {
        return p_bargin;
    }

    public String getP_name() {
        return p_name;
    }

    public String getP_price() {
        return p_price;
    }

    public String getType() {
        return type;
    }

    public void setP_bargin(int p_bargin) {
        this.p_bargin = p_bargin;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public void setType(String type) {
        this.type = type;
    }
    @Override
    public String toString(){
        return "p_name : "+p_name+" p_price "+p_price+" p_id "+p_id+" p_bargin "+p_bargin+" type "+type;
    }
}


