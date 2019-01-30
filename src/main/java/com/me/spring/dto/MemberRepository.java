package com.me.spring.dto;


import com.me.spring.dao.MemberDAO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

    @Autowired
    SqlSession session;


    public int insert(Member member){
        MemberDAO dao = session.getMapper(MemberDAO.class);

        int result = dao.insert(member);
        return result;
    }

    public Member selectId(Member member){
        MemberDAO dao = session.getMapper(MemberDAO.class);

        Member m = dao.selectId(member);
        return m;
    }

}
