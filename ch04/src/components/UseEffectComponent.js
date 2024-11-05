import React, { useEffect, useState } from "react";

const UseEffectComponent = () => {
  const [name, setName] = useState("홍길동");
  const [age, setAge] = useState(20);

  // mount 단계
  useEffect(() => {
    console.log("mount....");

    return () => {
      //unmount 단계
      console.log("unmount...");
    };
  }, []);

  // update(re-rendering) 단계
  useEffect(() => {
    console.log("update...");
  });

  //
  useEffect(() => {
    console.log("state name update...");
  }, [name, age]);

  return (
    <div className="UseEffectComponent">
      <h4>UseEffectComponent</h4>
      {/* prettier-ignore */}
      <>
      <p>이름 : {name}</p>
      <input type="text" value={name} onChange={(e)=>{setName(e.target.value)}}></input>

      <p>나이 : {age}</p>
      <input type="number" value={age} onChange={(e)=>{setAge(e.target.value)}}></input>
      </>
    </div>
  );
};

export default UseEffectComponent;
