package kr.spring.apply.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplyCompleteController {
   @RequestMapping(value="apply/applycomplete.do")
   public String form(){
      return "applyComplete";
   }
   
}