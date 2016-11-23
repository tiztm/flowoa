package com.jsdx.biz.entity;

import com.jsdx.core.entity.BaseJPAModel;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.util.List;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/11/23.
 */
@Entity
public class ApiType extends BaseJPAModel {

    private String name;

    private String url;

    private String isusing;

    private String needCatch;

    private List<ApiHelps> apiHelpsList;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }



    @OneToMany(fetch= FetchType.LAZY,  mappedBy="apiType", targetEntity=ApiHelps.class)
    public List<ApiHelps> getApiHelpsList() {
        return apiHelpsList;
    }

    public void setApiHelpsList(List<ApiHelps> apiHelpsList) {
        this.apiHelpsList = apiHelpsList;
    }

    public String getIsusing() {
        return isusing;
    }

    public void setIsusing(String isusing) {
        this.isusing = isusing;
    }

    public String getNeedCatch() {
        return needCatch;
    }

    public void setNeedCatch(String needCatch) {
        this.needCatch = needCatch;
    }
}
