import { createBrowserRouter } from "react-router-dom";
import Hello from "../components/sub1/Hello";
import Welcome from "../components/sub1/Welcome";
import Greeting from "../components/sub1/Greeting";

// 사용자 정의 라우터 생성
const root = createBrowserRouter([
  { path: "/", element: <Hello /> },
  { path: "/hello", element: <Hello /> },
  { path: "/welcome", element: <Welcome /> },
  { path: "/greeting", element: <Greeting /> },
]);

// 라우터 내보내기
export default root;
