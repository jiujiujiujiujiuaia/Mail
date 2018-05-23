package entity;

/**
 * Created by 87057 on 2018/5/22.
 */
public class Admin
{
    private int id;
    private String password;
    private String username;

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    @Override
    public String toString(){
        return "username: "+ username + "password: " + password;
    }
}
