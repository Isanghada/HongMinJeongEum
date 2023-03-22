package com.server.back.domain.user.repository;

import com.server.back.domain.user.entity.LoginHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface LoginHistoryRepository extends JpaRepository<LoginHistory, Long> {
}