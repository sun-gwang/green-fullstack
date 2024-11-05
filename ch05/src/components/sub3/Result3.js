import React from "react";
import { useLocation } from "react-router-dom";

const Result3 = () => {
  // 현재 정보를 갖는 useLocation hook
  const location = useLocation();
  const data = location.state.formDate;
  return (
    <div className="Result3">
      <span>Result3</span>
      <p>
        아이디 : {data.uid}
        <br></br>
        이름 : {data.name}
        <br></br>
        나이 : {data.age}
        <br></br>
      </p>
    </div>
  );
};

export default Result3;
