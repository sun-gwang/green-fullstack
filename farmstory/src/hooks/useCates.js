import React from "react";
import { useLocation } from "react-router-dom";

/**
 * 라우팅 주소에서 cate1, cate2를 반환하는 커스텀 훅
 */
const useCates = () => {
  const location = useLocation();
  const paths = location.pathname.split("/");
  const cate1 = paths[1];
  const cate2 = paths[2];

  return [cate1, cate2];
};

export default useCates;
