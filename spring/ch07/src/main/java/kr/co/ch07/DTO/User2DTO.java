package kr.co.ch07.DTO;

import kr.co.ch07.entity.User2;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class User2DTO {
    private String uid;
    private String name;
    private String birth;
    private String addr;

    public User2 toEntity(){
        return User2.builder()
                .uid(uid)
                .name(name)
                .birth(birth)
                .addr(addr).build();
    }
}
