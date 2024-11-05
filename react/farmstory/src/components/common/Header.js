import React from "react";
import Navigation from "./Navigation";
import { Link } from "react-router-dom";

const Header = () => {
  return (
    <>
      <header>
        <Link to="/" class="logo">
          <img src="/images/logo.png" alt="로고" />
        </Link>
        <p>
          <Link to="/">HOME |</Link>
          <Link to="/user/login">로그인 |</Link>
          <Link to="/user/register">회원가입 |</Link>
          <Link to="/admin/">관리자 |</Link>
          <Link to="#">고객센터</Link>
        </p>
        <img src="/images/head_txt_img.png" alt="3만원 이상 무료배송" />

        <Navigation />
      </header>
    </>
  );
};

export default Header;
