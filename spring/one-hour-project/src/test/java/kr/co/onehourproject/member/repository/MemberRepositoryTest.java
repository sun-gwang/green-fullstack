package kr.co.onehourproject.member.repository;

import kr.co.onehourproject.member.repository.entity.Member;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class MemberRepositoryTest {
    @Autowired
    private MemberRepository memberRepository;

    @Test
    public void crudTest(){
        Member member = Member.builder()
                .id("flature")
                .name("플래처")
                .phoneNumber("010-0000-0000")
                .build();

        // create test
        memberRepository.save(member);

        // get test
        Member foundMember = memberRepository.findById(1L).get();
    }
}