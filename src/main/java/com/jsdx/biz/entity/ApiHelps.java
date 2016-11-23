package com.jsdx.biz.entity;

import com.jsdx.core.entity.BaseJPAModel;

import javax.persistence.*;
import java.util.List;

/**
 * Created by IDEA
 * User:    tiztm
 * Date:    2016/11/23.
 */
@Entity
public class ApiHelps extends BaseJPAModel {

    private String name;

    private String url;

    private String aHref;

    private String aTitle;

    private String atip;

    private boolean needTran;

    private String tranName;

    private ApiHelps parentHelps;

    private ApiType apiType;

    private Integer order;

    private List<ApiHelps> childHelpsList;


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

    public String getaHref() {
        return aHref;
    }

    public void setaHref(String aHref) {
        this.aHref = aHref;
    }

    public String getaTitle() {
        return aTitle;
    }

    public void setaTitle(String aTitle) {
        this.aTitle = aTitle;
    }

    public String getAtip() {
        return atip;
    }

    public void setAtip(String atip) {
        this.atip = atip;
    }

    public boolean isNeedTran() {
        return needTran;
    }

    public void setNeedTran(boolean needTran) {
        this.needTran = needTran;
    }

    public String getTranName() {
        return tranName;
    }

    public void setTranName(String tranName) {
        this.tranName = tranName;
    }


    @ManyToOne(fetch = FetchType.LAZY, targetEntity=ApiHelps.class)
    @JoinColumn(name = "HELP_ID")
    public ApiHelps getParentHelps() {
        return parentHelps;
    }

    public void setParentHelps(ApiHelps parentHelps) {
        this.parentHelps = parentHelps;
    }

    @ManyToOne(fetch = FetchType.LAZY, targetEntity=ApiType.class)
    @JoinColumn(name = "TYPE_ID")
    public ApiType getApiType() {
        return apiType;
    }

    public void setApiType(ApiType apiType) {
        this.apiType = apiType;
    }

    @OneToMany(fetch=FetchType.LAZY,  mappedBy="parentHelps", targetEntity=ApiHelps.class)
    public List<ApiHelps> getChildHelpsList() {
        return childHelpsList;
    }

    public void setChildHelpsList(List<ApiHelps> childHelpsList) {
        this.childHelpsList = childHelpsList;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }
}
