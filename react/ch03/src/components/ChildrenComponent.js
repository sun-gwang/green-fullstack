import React from "react";

const ChildrenComponent = ({ children }) => {
  return (
    <div className="ChildrenComponent">
      ChildrenComponent
      {children}
    </div>
  );
};

export default ChildrenComponent;
