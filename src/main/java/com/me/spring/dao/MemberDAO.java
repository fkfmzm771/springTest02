package com.me.spring.dao;


import com.me.spring.dto.Member;

public interface MemberDAO {

    public int insert(Member member);

    public Member selectId(Member member);

}
