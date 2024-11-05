package kr.co.ch06.controller;

import kr.co.ch06.dto.User5DTO;
import kr.co.ch06.service.User5Service;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class User5Controller {
    private final User5Service user5Service;

    @GetMapping("/user5/list")
    public String list(Model model){
        List<User5DTO> users = user5Service.selectUser5s();
        model.addAttribute("users",users);
        return "/user5/list";
    }
    @GetMapping("/user5/register")
    public String register(){
        return "/user5/register";
    }
    @PostMapping("/user5/register")
    public String register(User5DTO user5DTO){
        user5Service.insertUser5(user5DTO);
        return "redirect:/user5/list";
    }
    @GetMapping("/user5/modify")
    public String modify(int seq, Model model){
        User5DTO user5DTO = user5Service.selectUser5(seq);
        model.addAttribute(user5DTO);
        return "/user5/modify";
    }
    @PostMapping("/user5/modify")
    public String modify(User5DTO user5DTO){
        user5Service.updateUser5(user5DTO);
        return "redirect:/user5/list";
    }
    @GetMapping("/user5/delete")
    public String delete(int seq){
        user5Service.deleteUser5(seq);
        return "redirect:/user5/list";
    }
}
