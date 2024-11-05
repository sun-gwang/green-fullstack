import React, { useState, useMemo } from "react";

const heavyCalc = (num) => {
  console.log("heavyCalc...");
  for (let i = 1; i <= 100000; i++) {}
  return num + 10000;
};

const lightCalc = (num) => {
  console.log("lightCalc...");

  return num + 1;
};

const UseMemoComponent = () => {
  const [heavyNum, setHeavyNum] = useState(1);
  const [lightNum, setLightNum] = useState(1);

  // heavyNum 상태값이 업데이트 될 때 heavyCalc 실행
  const heavyResult = useMemo(() => {
    heavyCalc(heavyNum);
  }, [heavyNum]);

  const lightResult = lightCalc(lightNum);

  return (
    <div className="UseMemoComponent">
      <h4>UseMemo hook 실습</h4>
      {/* prettier-ignore */}
      <>
      <p>heavyResult : {heavyResult}</p>
      <p>lightResult : {lightResult}</p>

        <p>
          heavyNum : <input type="number" value={heavyNum} onChange={(e) => {setHeavyNum(e.target.value)}}></input>
        </p>
        <p>
          lightNum : <input type="number" value={lightNum} onChange={(e) => {setLightNum(e.target.value)}}></input>
        </p>
      </>
    </div>
  );
};

export default UseMemoComponent;
