package com.port.lagarto.user;

import com.port.lagarto.Utils;
import com.port.lagarto.enums.JoinResult;
import com.port.lagarto.model.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired //필요한 메소드 자동찾기
    private UserService service;
    @Autowired
    private Utils utils;

    @GetMapping("/login")
    public String login(Model model) {
        if (utils.getLoginUserPk() != 0){
            return "redirect:/main/page";
        }
        model.addAttribute("title", "로그인");
        return "user/login";
    }



     @PostMapping("/apiLogin")
     @ResponseBody
     public int apiLoginProc(@RequestBody UserEntity entity){
        UserEntity dbentity = service.selUser(entity);
        if (dbentity == null){
            String pw = Utils.randomPw();
            entity.setUpw(pw);
            service.apiInsUser(entity);
            return 1;
        }
        utils.setLoginUser(dbentity);
        System.out.println(utils.getLoginUserPk());
         return 0;
     }

    @GetMapping("/certification")
    public void certification() {

    }

    @PostMapping("/certification")
    @ResponseBody
    public Map<String, Integer> certificationProc(@RequestBody @ModelAttribute("userEntity") UserEntity entity) {
        Map<String, Integer> result = new HashMap<>();

        // 중복된 번호
        int contactCheck = 0;

        service.contactCheck(entity);
        JoinResult joinRslt = entity.getResult();

        // 사용 가능한 번호
        if (joinRslt == JoinResult.AVAILABLE_CONTACT) {
            contactCheck = 1;
        }

        result.put("result", contactCheck);
        System.out.println("result : " + contactCheck);
        return result;
    }

//    @GetMapping("/join")
//    public String join(@ModelAttribute("userEntity") UserEntity entity, RedirectAttributes reAttr, Model model) {
//        if (entity.getResult() == JoinResult.AVAILABLE_CONTACT) {
//            model.addAttribute("title", "회원가입");
//            return "/user/join";
//        }
//        reAttr.addFlashAttribute("err", "휴대전화 인증을 먼저 해주세요.");
//        return "redirect:/user/certification";
//    }

    @GetMapping("/join")
    public void join() {

    }

    @PostMapping("/join")
    public String joinProc(UserEntity entity, RedirectAttributes reAttr) {
        int result = service.insUser(entity);

        if (!(result == 1 && entity.getResult() == JoinResult.SUCCESS)) {
            reAttr.addFlashAttribute("err", "회원가입에 실패하였습니다.");
            System.out.println("회원가입 실패");
        }
        System.out.println("회원가입 성공");

        return "redirect:/user/login";
    }

    @PostMapping("/apiJoin")
    public void apiJoinProc(UserEntity entity) {
        System.out.println(entity.getNickname());
        service.facebookIns(entity);
    }

    @PostMapping("/uidChk")
    @ResponseBody
    public Map<String, Integer> emailCount(@RequestBody UserEntity entity) {
        Map<String, Integer> result = new HashMap<>();
        System.out.println("uid : " + entity.getUid());
        result.put("result", service.uidCheck(entity));
        return result;
    }


    @PostMapping("/contChk")
    @ResponseBody
    public Map<String, Integer> contactCount(@RequestBody UserEntity entity) {
        Map<String, Integer> result = new HashMap<>();
        System.out.println("contact : " + entity.getContact_first() + entity.getContact_second() + entity.getContact_third());
        result.put("result", service.contactCheck(entity));
        return result;
    }

    @GetMapping("/mypage")
    public void mypage(Model model) {
        model.addAttribute("title", "마이페이지");
    }
}

