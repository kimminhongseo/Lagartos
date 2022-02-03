package com.port.lagarto.user;


import com.port.lagarto.Const;
import com.port.lagarto.Utils;
import com.port.lagarto.enums.JoinResult;
import com.port.lagarto.model.UserDto;
import com.port.lagarto.model.UserEntity;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.facebook.api.User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;


@Service
public class UserService {

    @Autowired
    private UserMapper mapper;

    @Autowired
    private Utils utils;
    @Autowired
    private HttpSession hs;


    public int apiInsUser(UserEntity entity){
        UserEntity result = null;
        try {
            result = mapper.selUser(entity);
            if (result == null){
                mapper.apiInsUser(entity);
                result = mapper.selUser(entity);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        hs.setAttribute(Const.LOGIN_USER, result);
        return 0;
    }

    public int insUser(UserEntity entity) {
        UserEntity copyEntity = new UserEntity();
        BeanUtils.copyProperties(entity, copyEntity);

        // 필수 약관동의 체크
        if (!(copyEntity.getDisc_agree_a() == 1 && copyEntity.getDisc_agree_b() == 1)) {
            System.out.println("desc err");
            copyEntity.setResult(JoinResult.FAILURE);
            return 0;
        }

        // 아이디 정규식 체크
        if (Const.checkUid(entity.getUid())) {
            copyEntity.setResult(JoinResult.FAILURE);
            return 0;
        }

        // 아이디 중복 체크
        if (mapper.selUidCount(entity) > 0) {
            copyEntity.setResult(JoinResult.DUPLICATE_EMAIL);
            return 0;
        }

        // 전화번호 중복 체크
        if (mapper.selContactCount(copyEntity) > 0) {
            System.out.println("contact check err");
            copyEntity.setResult(JoinResult.DUPLICATE_CONTACT);
            return 0;
        }

        String hashUpw = BCrypt.hashpw(copyEntity.getUpw(), BCrypt.gensalt());
        copyEntity.setUpw(hashUpw);
        System.out.println(hashUpw);

        copyEntity.setResult(JoinResult.SUCCESS);
        return mapper.insUser(copyEntity);
    }

    public int contactCheck(UserEntity entity) {
        int result = mapper.selContactCount(entity);

        if (result > 0) {
            entity.setResult(JoinResult.DUPLICATE_CONTACT);
            return result;
        }

        entity.setResult(JoinResult.AVAILABLE_CONTACT);
        return result;
    }

    public int uidCheck(UserEntity entity) {
        int result = mapper.selUidCount(entity);

        if (result > 0) {
            entity.setResult(JoinResult.DUPLICATE_EMAIL);
        }

        return result;
    }

    public int loginSel(UserEntity entity){
        UserEntity dbUser = null;
        try {
            dbUser = mapper.loginSel(entity);
        } catch (Exception e) {
        e.printStackTrace();
            return 0; //알 수 없는 에러
        }
        if(dbUser != null) {
            if(BCrypt.checkpw(entity.getUpw(), dbUser.getUpw())) {
                dbUser.setUpw(null);
                utils.setLoginUser(dbUser);
                return 1; //로그인 성공
            }
        }
        return 2;//로그인 실패
    }

    public UserEntity selUser(UserEntity entity){
        return mapper.selUser(entity);
    }

    public UserEntity facebookIns(UserEntity entity){
        entity.setIuser(utils.getLoginUserPk());
        return mapper.facebookPk(entity);
    }


    public UserEntity passwordSel(UserDto entity){
        UserEntity dbUpw = mapper.passwordSel(entity);
        if(BCrypt.checkpw(entity.getUpw(), dbUpw.getUpw())){
            entity.setNewUpw(BCrypt.hashpw(entity.getNewUpw(), BCrypt.gensalt()));
            return mapper.passwordUpd(entity);
        }
        return null;
    }


}