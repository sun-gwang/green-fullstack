import React from "react";

const PropsComponent = (props) => {
  // 상태
  const subject = props.subject;
  const message = props.message;

  // JSX Render
  return (
    <div className="PropsComponent">
      <h4>PropsComponent</h4>
      <p>
        subject : {subject}
        <br />
        message : {message}
      </p>
    </div>
  );
};

export default PropsComponent;
