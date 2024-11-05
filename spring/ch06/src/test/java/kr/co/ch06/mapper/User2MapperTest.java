package kr.co.ch06.mapper;

import kr.co.ch06.dto.User2DTO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.BDDMockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Slf4j
@SpringBootTest
class User2MapperTest {

    @Autowired
    private User2Mapper mapper;

    
    @DisplayName("user2등록")
    void insertUser2() {
        log.info("insertUser2()...");

        // given
        User2DTO user2DTO = User2DTO.builder()
                .uid("A107")
                .name("테스트")
                .birth("2024-03-12")
                .addr("테스트시").build();

        // when
        mapper.insertUser2(user2DTO);

        // then
        User2DTO resultUser2 = mapper.selectUser2(user2DTO.getUid());
        Assertions.assertEquals(user2DTO.getUid(), resultUser2.getUid());
    }
    

    @DisplayName("user2 조회")
    void selectUser2() {

        log.info("selectUser2()...");

        // given
        String uid = "A107";

        // when
        User2DTO user2DTO = mapper.selectUser2(uid);
        log.info(user2DTO.toString());

        // then
        assertEquals(uid, user2DTO.getUid());
    }


    @DisplayName("user2 목록")
    void selectUser2s() {

        log.info("selectUser2s()...");

        // given
        List<User2DTO> users = mapper.selectUser2s();

        // when
        for(User2DTO user : users){
            log.info(user.toString());
        }

        // then
        assertFalse(users.isEmpty());
    }


    @DisplayName("user2 수정")
    void updateUser2() {
        log.info("updateUser2()...");

        // given
        User2DTO user2DTO = User2DTO.builder()
                .uid("A107")
                .name("테슽흐")
                .birth("2024-04-01")
                .addr("테슽흐시").build();

        // when
        mapper.updateUser2(user2DTO);

        // then
        User2DTO resultUser2 = mapper.selectUser2(user2DTO.getUid());
        assertEquals(user2DTO.getUid(), resultUser2.getUid());
    }

    @Test
    @DisplayName("user2 삭제")
    void deleteUser2() {
        log.info("deleteUser2()");

        // given
        String uid = "a107";

        // when
        mapper.deleteUser2(uid);

        // then
        User2DTO resultUser2 = mapper.selectUser2(uid);
        assertNull(resultUser2);

    }
}