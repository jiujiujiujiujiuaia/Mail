package entity;

/**
 * Created by 87057 on 2018/5/8.
 */
public class Product {
    private String p_name;
    private String p_price;
    private int p_id;
    private int p_bargin;
    private String type;

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
}


