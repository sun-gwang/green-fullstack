import { createBrowserRouter } from "react-router-dom";
import MainPage from "../pages/main/MainPage";
import HelloPage from "../pages/introduction/HelloPage";
import DircetionPage from "../pages/introduction/DircetionPage";
import ListPage from "../pages/market/ListPage";
import GrowPage from "../pages/croptalk/GrowPage";
import SchoolPage from "../pages/croptalk/SchoolPage";
import StoryPage from "../pages/croptalk/StoryPage";
import InfoPage from "../pages/event/InfoPage";
import LoginPage from "../pages/user/LoginPage";
import LogoutPage from "../pages/user/LogoutPage";
import RegisterPage from "../pages/user/RegisterPage";
import TermsPage from "../pages/user/TermsPage";
import NoticePage from "../pages/community/NoticePage";
import AdminMainPage from "../pages/admin/MainPage";
import AdminRegisterPage from "../pages/admin/product/RegisterPage";

const root = createBrowserRouter([
  { path: "/", element: <MainPage /> },
  { path: "/introduction/hello", element: <HelloPage /> },
  { path: "/introduction/direction", element: <DircetionPage /> },
  { path: "/market/list", element: <ListPage /> },
  { path: "/croptalk/story", element: <StoryPage /> },
  { path: "/croptalk/grow", element: <GrowPage /> },
  { path: "/croptalk/school", element: <SchoolPage /> },
  { path: "/event/info", element: <InfoPage /> },
  { path: "/community/notice", element: <NoticePage /> },
  { path: "/user/login", element: <LoginPage /> },
  { path: "/user/terms", element: <TermsPage /> },
  { path: "/user/register", element: <RegisterPage /> },
  { path: "/user/logout", element: <LogoutPage /> },
  { path: "/admin", element: <AdminMainPage /> },
  { path: "/admin/product/register", element: <AdminRegisterPage /> },
]);

// 라우터 내보내기
export default root;
