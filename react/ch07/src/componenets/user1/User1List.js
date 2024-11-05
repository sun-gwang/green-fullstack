import axios from "axios";
import React, { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";

const User1List = () => {
  const navigate = useNavigate();
  const [users, setUsers] = useState([]);

  useEffect(() => {
    console.log("mount....");

    axios
      .get("http://localhost:8080/ch09/user1")
      .then((response) => {
        console.log(response.data);
        setUsers(response.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);

  const modifyHandler = (user) => {
    navigate(`/user1/modify?uid=${user.uid}`);
  };

  const deleteHandler = (user) => {
    axios
      .delete(`http://localhost:8080/ch09/user1/${user.uid}`)
      .then((response) => {
        console.log(response.data);
        setUsers(response.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  return (
    <div>
      <span>User1 목록</span>
      <table border="1">
        <tbody>
          <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>생년월일</th>
            <th>휴대폰</th>
            <th>나이</th>
            <th>관리</th>
          </tr>

          {users.map((user, index) => (
            <tr key={index}>
              <td>{user.uid}</td>
              <td>{user.name}</td>
              <td>{user.birth}</td>
              <td>{user.hp}</td>
              <td>{user.age}</td>
              <td>
                <button onClick={() => modifyHandler(user)}>수정</button>
                <button onClick={() => deleteHandler(user)}>삭제</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default User1List;
