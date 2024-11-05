package kr.co.springmongotest.controller;

import kr.co.springmongotest.document.User1Document;
import kr.co.springmongotest.dto.User1DTO;
import kr.co.springmongotest.service.User1Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Log4j2
@RestController
@RequiredArgsConstructor
public class User1Controller {

    private final User1Service user1Service;

    @GetMapping("/user1")
    public List<User1Document> findUser1All(){
        return user1Service.findUser1All();
    }

    @GetMapping("/user1/{uid}")
    public User1Document findUser1(@PathVariable("uid") String uid){
        return user1Service.findUser1(uid).get();
    }

    @PostMapping("/user1")
    public User1Document insertUser1(@RequestBody User1DTO user){

        log.info(user);
        //return user1Service.insertUser1(user);
        return null;
    }

    @PutMapping("/user1/{uid}")
    public User1Document updateUser1(User1Document user){
        return user1Service.updateUser1(user);
    }

    @DeleteMapping("/user1/{uid}")
    public void deleteUser1(@PathVariable("uid") String uid){
        user1Service.deleteUser1(uid);
    }

}
