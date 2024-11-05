import React, { useState } from "react";

const UseStateComponent = () => {
  // state 생성
  const [count, setCount] = useState(0);
  const [message, setMessage] = useState("");
  const [user, setUser] = useState({ uid: "", name: "", age: "" });
  const iuputChangeHandler = (e) => {
    setMessage(e.target.value);
  };
  return (
    <div className="UseStateComponent">
      <h4>UseStateComponent</h4>
      {/*prettier-ignore */}
      <p>
        상태값 count: {count}
        <br />
        <button onClick={() => {setCount(count + 1);}}>증가</button>
        <button onClick={() => {setCount(count - 1);}}> 감소 </button>
      </p>

      <p>{message}</p>
      <input type="text" value={message} onChange={iuputChangeHandler}></input>

      <p>
        아이디 : {user.uid}
        <br />
        이름 : {user.name}
        <br />
        나이 : {user.age}
        <br></br>
      </p>
      <input
        type="text"
        value={user.uid}
        onChange={(e) => {
          setUser({...user, uid: e.target.value });
        }}
      ></input>
      <input
        type="text"
        value={user.name}
        onChange={(e) => {
          setUser({...user, name: e.target.value });
        }}
      ></input>
      <input
        type="number"
        value={user.age}
        onChange={(e) => {
          setUser({...user, age: e.target.value });
        }}
      ></input>
    </div>
  );
};

export default UseStateComponent;
