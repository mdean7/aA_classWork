import React from "react";

export const TodoListItem = ({ todos }) => {
  console.log(todos);
  return todos.map((todo) => <li key={todo.id}>{todo.title}</li>);
};
