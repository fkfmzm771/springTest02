package com.me.spring.controller;

import com.me.spring.dto.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @RequestMapping(value = "joinus", method = RequestMethod.GET)
    public String joinus(){

        return "joinForm";
    }

    @RequestMapping(value = "joinus", method = RequestMethod.POST)
    public String joinus(Model model, Member member){

        System.out.println(member);


        model.addAttribute("userid","aaaa");
        model.addAttribute("userpwd","bbb");
        model.addAttribute("phone","454545");


        return "joinForm";
    }



    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(){

        return "loginForm";
    }

    @RequestMapping(value = "modify", method = RequestMethod.GET)
    public String modify(){

        return "modifyForm";
    }

}
