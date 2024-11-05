import React from "react";
import { Link, useLocation } from "react-router-dom";
import useCates from "../../hooks/useCates";

const Aside = () => {
  const [cate1, cate2] = useCates();
  return (
    <>
      {/*introduction */}
      {cate1 === "introduction" && (
        <aside>
          <img src="../images/sub_aside_cate1_tit.png" alt="팜스토리 소개" />

          <ul className="lnb">
            <li className={cate2 === "hello" ? "on" : ""}>
              <Link to="/introduction/hello">인사말</Link>
            </li>
            <li className={cate2 === "direction" ? "on" : ""}>
              <Link to="/introduction/direction">찾아오시는 길</Link>
            </li>
          </ul>
        </aside>
      )}

      {/*market */}
      {cate1 === "market" && (
        <aside>
          <img src="../images/sub_aside_cate2_tit.png" alt="장보기" />

          <ul class="lnb">
            <li class="on">
              <a href="./market.html">장보기</a>
            </li>
          </ul>
        </aside>
      )}

      {/*croptalk */}
      {cate1 === "croptalk" && (
        <aside>
          <img src="../images/sub_aside_cate3_tit.png" alt="농작물이야기" />

          <ul class="lnb">
            <li>
              <a href="./story.html">농작물이야기</a>
            </li>
            <li class="on">
              <a href="./grow.html">텃밭가꾸기</a>
            </li>
            <li>
              <a href="./school.html">귀농학교</a>
            </li>
          </ul>
        </aside>
      )}

      {/*event */}
      {cate1 === "event" && (
        <aside>
          <img src="../images/sub_aside_cate4_tit.png" alt="이벤트" />

          <ul class="lnb">
            <li class="on">
              <a href="./grow.html">이벤트</a>
            </li>
          </ul>
        </aside>
      )}

      {/*community */}
      {cate1 === "community" && (
        <aside>
          <img src="../images/sub_aside_cate5_tit.png" alt="커뮤니티" />

          <ul className="lnb">
            <li>
              <Link to="./notice.html">공지사항</Link>
            </li>
            <li>
              <Link to="./menu.html">오늘의식단</Link>
            </li>
            <li class="on">
              <Link to="./chef.html">나도요리사</Link>
            </li>
            <li>
              <Link to="./qna.html">1:1고객문의</Link>
            </li>
            <li>
              <Link to="./faq.html">자주묻는질문</Link>
            </li>
          </ul>
        </aside>
      )}
    </>
  );
};

export default Aside;
