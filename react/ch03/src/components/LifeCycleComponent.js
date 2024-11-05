import React, { Component } from "react";

export default class LifeCycleComponent extends Component {
  state = {
    count: 0,
    isVisible: true,
  };

  componentDidMount() {
    console.log("componentDidMount");
  }
  shouldComponentUpdate() {
    console.log("shouldComponentUpdate");
    return true;
  }

  render() {
    console.log("render");
    // prettier-ignore
    return (
      <div className="LifeCycleComponent">
        <h4>LifeCycleComponent</h4>
        <p>
          count : {this.state.count}
          <button onClick={() => {this.setState({ count: this.state.count + 1 })}}>증가</button>
        </p>
      </div>
    );
  }

  componentDidUpdate() {
    console.log("componentDidUpdate");
  }
  componentWillUnmount() {
    console.log("componentWillUnmount");
  }
}
