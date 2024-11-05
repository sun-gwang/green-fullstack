import logo from "./logo.svg";
import {
  BrowserRouter,
  Link,
  Route,
  RouterProvider,
  Routes,
} from "react-router-dom";
import "./App.css";
import Hello from "./components/sub1/Hello";
import Welcome from "./components/sub1/Welcome";
import Greeting from "./components/sub1/Greeting";
import Parent from "./components/sub2/Parent";
import Child1 from "./components/sub2/Child1";
import Child2 from "./components/sub2/Child2";
import Result1 from "./components/sub3/Result1";
import Result2 from "./components/sub3/Result2";
import Result3 from "./components/sub3/Result3";
import RouterPassingData from "./components/sub3/RouterPassingData";
import root from "./router/Root";

/*
  날짜 : 2024/05/02
  이름 : 김선광
  내용 : ch05 리액트 라우터 실습

  react-router 설치
  npm install react-router-dom
*/
function App() {
  return (
    <div className="App">
      {/* 기본 Browser를 기반한 라우팅 */}
      <h4>React Router 기본</h4>
      <BrowserRouter>
        <p>
          <Link to="/sub1/hello">hello</Link>
          <br />
          <Link to="/sub1/welcome">welcome</Link>
          <br />
          <Link to="/sub1/greeting">greeting</Link>
          <br />
        </p>

        <Routes>
          <Route path="/sub1/hello" element={<Hello />}></Route>
          <Route path="/sub1/welcome" element={<Welcome />}></Route>
          <Route path="/sub1/greeting" element={<Greeting />}></Route>
        </Routes>
      </BrowserRouter>

      <h4>중첩 라우터 Outlet</h4>
      <BrowserRouter>
        <p>
          <Link to="/sub2/Parent">Parent</Link>
          <br />
          <Link to="/sub2/Parent/Child1">Child1</Link>
          <br />
          <Link to="/sub2/Parent/Child2">Child2</Link>
          <br />
        </p>

        <Routes>
          <Route path="/sub2/Parent" element={<Parent />}>
            <Route path="/sub2/Parent/Child1" element={<Child1 />} />
            <Route path="/sub2/Parent/Child2" element={<Child2 />} />
          </Route>
        </Routes>
      </BrowserRouter>

      <h4>Router 데이터 전송</h4>
      <BrowserRouter>
        <RouterPassingData />
      </BrowserRouter>

      <h4>사용자 정의 라우터</h4>
      <RouterProvider router={root} />
    </div>
  );
}

export default App;
