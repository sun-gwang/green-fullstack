package kr.co.springcloudservice2.controller;

import brave.Span;
import brave.Tracer;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

@RestController
@Slf4j
@RequiredArgsConstructor
public class MainController {
    private final WebClient webClient;
    private final Tracer tracer;
    @GetMapping(value = {"/", "/index"})
    public Mono<String> index(){

        log.info("service2 index...1");
        return webClient
                .get()
                .uri("/index")
                .retrieve()
                .bodyToMono(String.class);
    }


    @GetMapping("/user")
    public Mono<String> user(){

        log.info("service2 user...1");
        return webClient
                .get()
                .uri("/user")
                .retrieve()
                .bodyToMono(String.class);
    }

    @GetMapping("/sleuth")
    public String sleuth(){
        Span currentSpan = tracer.currentSpan();

        String traceId = currentSpan.context().traceIdString();
        String spanId = currentSpan.context().spanIdString();

        return "[traceId : "+traceId + ", spanId : "+spanId + "]";
    }

}
