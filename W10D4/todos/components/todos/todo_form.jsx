import React, { useState } from "react";

export const TodoForm = () => {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");

  console.log(title);
  return (
    <form>
      <input
        type="text"
        placeholder="Enter title"
        value={title}
        onChange={(e) => setTitle(e.target.value)}
      />
      <input
        type="text"
        placeholder="Enter comment"
        value={body}
        onChange={(e) => setBody(e.target.value)}
      />
      <input type="submit" value="Submit" />
    </form>
  );
};

// export default class TodoForm extends React.Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       id: Math.floor(Math.random() * 1000000),
//       title: "",
//       body: "",
//     };

//     this.setTitle = this.setTitle.bind(this);
//     this.setBody = this.setBody.bind(this);
//     this.handleSubmit = this.handleSubmit.bind(this)
//   }

//   setTitle(e) {
//     this.setState({ title: e.target.value });
//   }
//   setBody(e) {
//     this.setState({ body: e.target.value });
//   }

//   handleSubmit(e) {
//     e.preventDefault();
//     this.props.receiveTodo(this.state);
//     this.setState ({
//       id: Math.floor(Math.random() * 1000000),
//       title: "",
//       body: "",
//     })
//     console.log(this.state);
//   }

//   render() {
//     console.log(this.props);
//     console.log(this.state.title);
//     return (
//       <form onSubmit={this.handleSubmit}>
//         <input
//           type="text"
//           placeholder="Enter title"
//           value={this.state.title}
//           onChange={this.setTitle}
//         />
//         <input
//           type="text"
//           placeholder="Enter comment"
//           value={this.state.body}
//           onChange={this.setBody}
//         />
//         <input type="submit" value="Add To Do" />
//       </form>
//     );
//   }
// }
