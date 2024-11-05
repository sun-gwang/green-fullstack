import React, { Component } from "react";

export default class StateComponent extends Component {
  // state 선언
  state = {
    num1: 1,
    num2: 2,
  };

  // JSX
  render() {
    // prettier-ignore
    return (
      <div className="StateComponent">
        <h4>StateComponent</h4>

        <p>상태값 num1: {this.state.num1}</p>
        <button onClick={() => {this.setState({ num1: this.state.num1 + 1 })}}> 증가 </button>
        <button onClick={() => {this.setState({ num1: this.state.num1 - 1 })}}> 감소 </button>

        <p>상태값 num2: {this.state.num2}</p>
        <button onClick={() => {this.setState({ num2: this.state.num2 + 1 })}}> 증가 </button>
        <button onClick={() => {this.setState({ num2: this.state.num2 - 1 })}}> 감소 </button>
      </div>
    );
  }
}
