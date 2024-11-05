import React, { Component } from "react";

// rcc : react class component
export default class RefComponent extends Component {
  // ref 선언
  refName = React.createRef();

  btn1Handler = () => {
    const name = document.getElementById("name").value;
    alert(name);
  };
  btn2Handler = () => {
    // ref 참조값으로 해당 태그값 참조
    const name = this.refName.current.value;
    alert(name);
  };
  
  render() {
    return (
      <div className="RefComponent">
        <h4>RefComponent</h4>

        {/* id 속성 */}
        <p>
          <input type="text" id="name" />
          <button onClick={this.btn1Handler}>확인</button>
        </p>

        <p>
          <input type="text" ref={this.refName} />
          <button onClick={this.btn2Handler}>확인</button>
        </p>
      </div>
    );
  }
}
