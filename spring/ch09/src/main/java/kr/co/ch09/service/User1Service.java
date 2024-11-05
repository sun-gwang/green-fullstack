package kr.co.ch09.service;

import kr.co.ch09.dto.User1DTO;
import kr.co.ch09.entity.User1;
import kr.co.ch09.repository.User1Repository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j @Service @AllArgsConstructor
public class User1Service {

    private final User1Repository repository;

    public void insertUser1(User1DTO user1DTO){
        User1 user1 = user1DTO.toEntity();
        repository.save(user1);
    }
    public User1DTO selectUser1(String uid){
        User1 user1 = repository.findById(uid).get();
        return user1.toDTO();

    }
    public List<User1DTO> selectUser1s(){
        List<User1> user1s = repository.findAll();

        List<User1DTO> user1DTOS = user1s.stream()
                .map(entity -> User1DTO.builder()
                        .uid(entity.getUid())
                        .name(entity.getName())
                        .birth(entity.getBirth())
                        .hp(entity.getHp())
                        .age(entity.getAge()).build())
                        .collect(Collectors.toList());

        return user1DTOS;
    }

    public User1DTO updateUser1(User1DTO user1DTO){
        repository.save(user1DTO.toEntity());
        
        // 수정한 사용자 반환
        Optional<User1> result = repository.findById(user1DTO.getUid());
        return result.get().toDTO();
    }

    public ResponseEntity deleteUser1(String uid){

        Optional<User1> optUser1 = repository.findById(uid);

        if(optUser1.isPresent()){
            // 삭제할 사용자가 존재하면 삭제 후 삭제한 사용자 정보 ResponseEntity로 반환
            repository.deleteById(uid);
            return ResponseEntity.ok().body(optUser1.get());
        }else{
            // 사용자가 존재하지 않으면 NOT_FOUND 응답데이터와 user not found 메시지
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("user not found");
        }

    }

}
