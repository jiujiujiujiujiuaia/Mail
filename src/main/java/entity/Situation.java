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
        return "c_id: "+c_id+"p_id: "+p_id+"status: "+status;
    }
}

