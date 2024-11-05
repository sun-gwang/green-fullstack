package kr.co.springmongotest.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User1DTO {

    private String uid;
    private String name;
    private int age;
    private String addr;
}
