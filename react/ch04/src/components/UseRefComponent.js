import React, { useRef } from "react";

const UseRefComponent = () => {
  // ref 생성 : ref는 DOM요소나 컴포넌트에 대한 참조값
  const refUid = useRef();
  const refName = useRef();

  const btn1Handler = () => {
    const value = refUid.current.value;
    alert(value);
  };
  const btn2Handler = () => {
    const value = refName.current.value;
    alert(value);
  };

  return (
    <div className="UseRefComponent">
      <h4>UseRef Hook 실습</h4>
      <p>
        <input type="text" name="uid" ref={refUid}></input>
        <br />
        <button onClick={btn1Handler}>확인</button>
      </p>

      <p>
        <input type="text" name="Name" ref={refName}></input>
        <br />
        <button onClick={btn2Handler}>확인</button>
      </p>
    </div>
  );
};

export default UseRefComponent;
