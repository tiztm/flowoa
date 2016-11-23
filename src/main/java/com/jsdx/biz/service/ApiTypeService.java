package com.jsdx.biz.service;

import com.jsdx.biz.entity.ApiType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ApiTypeService extends JpaRepository<ApiType, String> {
}