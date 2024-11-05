import React from "react";
import { Outlet } from "react-router-dom";

const Parent = () => {
  return (
    <div className="Parent">
      <p>Parent 컴포넌트</p>

      {/* 이쪽으로 자식 라우트 렌더링 */}
      <Outlet />
    </div>
  );
};

export default Parent;
