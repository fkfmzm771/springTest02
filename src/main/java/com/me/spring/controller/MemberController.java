package com.me.spring.controller;

import com.me.spring.dto.Member;
import com.me.spring.dto.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Autowired
    MemberRepository repo;



    @RequestMapping(value = "joinus", method = RequestMethod.GET)
    public String joinus(){

        return "joinForm";
    }

    @RequestMapping(value = "joinus", method = RequestMethod.POST)
    public String joinus(Member member){

        int result = repo.insert(member);
        System.out.println("유저 추가 : " + result);

        return "index";
    }



    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(){

        return "loginForm";
    }

    @RequestMapping(value = "modify", method = RequestMethod.GET)
    public String modify(){

        return "modifyForm";
    }

    @RequestMapping(value = "idcheck", method = RequestMethod.GET)
    public String idcheck(){

        return "idcheck";
    }

}
