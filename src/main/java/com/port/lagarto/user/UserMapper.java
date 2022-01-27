package com.port.lagarto.user;

import com.port.lagarto.model.UserEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    int apiInsUser(UserEntity entity);
    int insUser(UserEntity entity);
    int selContactCount(UserEntity entity);
    int selUidCount(UserEntity entity);
    int isDesc(UserEntity entity);
    UserEntity selUser(UserEntity entity);
    UserEntity facebookPk(UserEntity entity);
    UserEntity loginSel(UserEntity entity);
}
