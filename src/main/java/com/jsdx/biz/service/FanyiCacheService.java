package com.jsdx.biz.service;

import com.jsdx.biz.entity.FanyiCache;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FanyiCacheService extends JpaRepository<FanyiCache, String> {

    FanyiCache findByEng(String end);

}