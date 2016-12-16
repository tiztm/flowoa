package com.jsdx.biz.entity;

import com.jsdx.core.entity.BaseJPAModel;

import javax.persistence.Entity;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/11/23.
 */
@Entity
public class FanyiCache extends BaseJPAModel {

    private String eng;

    private String chinese;

    private String beixuan;

    public String getEng() {
        return eng;
    }

    public void setEng(String eng) {
        this.eng = eng;
    }

    public String getChinese() {
        return chinese;
    }

    public void setChinese(String chinese) {
        this.chinese = chinese;
    }

    public String getBeixuan() {
        return beixuan;
    }

    public void setBeixuan(String beixuan) {
        this.beixuan = beixuan;
    }
}
