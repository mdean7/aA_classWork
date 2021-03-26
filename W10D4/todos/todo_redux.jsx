import React from "react"; 
import ReactDOM from 'react-dom';
import {configureStore} from "./frontend/store/store";
// import {receiveTodo, receiveTodos, removeTodo} from "./frontend/actions/todo_actions"
import * as todoActions from "./frontend/actions/todo_actions"
import * as stepActions from "./frontend/actions/steps_actions"

document.addEventListener("DOMContentLoaded", function(){
  const content = document.getElementById("content");
  ReactDOM.render(<h1>Todos App</h1>, content)
});

const store = configureStore();
window.store = store;
window.todoActions = todoActions;
window.stepActions = stepActions
// window.receiveTodos = receiveTodos;
// window.removeTodo = removeTodo;
