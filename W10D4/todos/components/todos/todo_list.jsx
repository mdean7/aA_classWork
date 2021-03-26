import React from "react";
import { TodoListItem } from "./todo_list_item";
import  { TodoForm } from "./todo_form";

export default ({ todos, receiveTodo }) => {
  return (
    <div>
      <h1>To Do List</h1>
      <ul>
        <TodoListItem todos={todos}  />
      </ul>
      <TodoForm receiveTodo={receiveTodo} />
    </div>
  );
};
