package kr.co.ch07.service;

import kr.co.ch07.DTO.User3DTO;
import kr.co.ch07.entity.User3;
import kr.co.ch07.repository.User3Repository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@AllArgsConstructor
public class User3Service {
    private final User3Repository repository;

    public void insertUser3(User3DTO user3DTO){
        User3 user3 = user3DTO.toEntity();
        repository.save(user3);
    }
    public List<User3DTO> selectUser3s(){
        List<User3> user3s = repository.findAll();

        List<User3DTO> user3DTOS = user3s.stream()
                .map(entity -> User3DTO.builder()
                        .uid(entity.getUid())
                        .name(entity.getName())
                        .birth(entity.getBirth())
                        .hp(entity.getHp())
                        .addr(entity.getAddr()).build())
                        .collect(Collectors.toList());

        return user3DTOS;
    }
    public User3DTO selectUser3(String uid){
        Optional<User3> result = repository.findById(uid);
        User3 user3 = result.get();

        return user3.toDTO();
    }
    public void updateUser3(User3DTO user3DTO){
        User3 user3 = user3DTO.toEntity();
        repository.save(user3);
    }
    public void deleteUser3(String uid){
        repository.deleteById(uid);
    }
}
