import React from "react";
import ReactDOM from "react-dom";
import { configureStore } from "./store/store";
// import {receiveTodo, receiveTodos, removeTodo} from "./frontend/actions/todo_actions"
import * as todoActions from "./actions/todo_actions";
import * as stepActions from "./actions/steps_actions";
import { Root } from "../root";
import { allTodos } from "./reducers/selectors";

const store = configureStore();

document.addEventListener("DOMContentLoaded", function () {
  const content = document.getElementById("content");
  ReactDOM.render(<Root store={store} />, content);
});

window.allTodos = allTodos;
window.store = store;
window.todoActions = todoActions;
window.stepActions = stepActions;
// window.receiveTodos = receiveTodos;
// window.removeTodo = removeTodo;
