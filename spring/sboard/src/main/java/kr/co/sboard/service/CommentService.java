package kr.co.sboard.service;

import kr.co.sboard.dto.ArticleDTO;
import kr.co.sboard.entity.Article;
import kr.co.sboard.repository.ArticleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Slf4j @RequiredArgsConstructor @Service
public class CommentService {

    private final ModelMapper modelMapper;
    private final ArticleRepository articleRepository;

    public ResponseEntity<Article> insertComment(ArticleDTO articleDTO){

        Article article = modelMapper.map(articleDTO, Article.class);
        Article savedArticle = articleRepository.save(article);
        log.info(savedArticle.toString());

        return ResponseEntity.ok().body(savedArticle);
    }
    
    public ResponseEntity<List<ArticleDTO>> selectComments(int no){
        // ArticleRepository -> findByParent() 쿼리 메서드 정의
        List<Article> articleList = articleRepository.findByParent(no);

        List<ArticleDTO> articleDTOS = articleList.stream()
                                            .map(entity -> modelMapper.map(entity, ArticleDTO.class))
                                            .toList();

        return ResponseEntity.ok().body(articleDTOS);
    }

    public ResponseEntity<?> updateComment(ArticleDTO articleDTO){

        Optional<Article> optArticle = articleRepository.findById(articleDTO.getNo());

        if(optArticle.isPresent()){
            Article article = optArticle.get();

            article.setContent(articleDTO.getContent());

            log.info("article : " + article);

            Article modifiedArticle = articleRepository.save(article);
            
            // 수정 후 수정 데이터 반환
            return ResponseEntity.status(HttpStatus.OK).body(modifiedArticle);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("not found");
        }

    }
    public ResponseEntity<?> deleteComment(int no){

        Optional<Article> optArticle = articleRepository.findById(no);
        log.info("optArticle: " + optArticle);

        if(optArticle.isPresent()){
            log.info("here1");

            articleRepository.deleteById(no);

            return ResponseEntity.ok().body(optArticle.get());
        }else{
            log.info("here2");
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("not found");
        }
    }
}