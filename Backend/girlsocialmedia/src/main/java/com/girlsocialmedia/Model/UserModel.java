package com.girlsocialmedia.Model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity(name = "users")
public class UserModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long user_id;

    @OneToMany(mappedBy = "user_id", cascade = CascadeType.ALL)
    private List<PostModel> posts;

    @NotNull
    @Size(max = 50)
    public String icon;

    @Column(unique = true)
    @NotNull
    @Size(max = 50)
    public String username;

    @NotNull
    @Size(max = 100)
    private String name;

    @Column(unique = true)
    @NotNull
    @Size(max = 155)
    private String email;

    @NotNull
    @Size(max = 155)
    private String securityemail;

    @Column(unique = true)
    @NotNull
    @Size(max = 15)
    private String tel;

    @Size(max = 255)
    public String bio;

    @NotNull
    @Column(unique = true)
    @Size(max = 50)
    private String token;

    @Column(unique = true)
    private String auth;

    @NotNull
    @Size(max = 100)
    protected String mac;

    @NotNull
    @Size(max = 100)
    private String password;

    public Integer followers;
    public Integer following;


    // GETTER E SETTER

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSecurityemail() {
        return securityemail;
    }

    public void setSecurityemail(String securityemail) {
        this.securityemail = securityemail;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getFollowers() {
        return followers;
    }

    public void setFollowers(Integer followers) {
        this.followers = followers;
    }

    public Integer getFollowing() {
        return following;
    }

    public void setFollowing(Integer following) {
        this.following = following;
    }
}
