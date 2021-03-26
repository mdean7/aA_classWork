import {
  RECEIVE_TODOS,
  RECEIVE_TODO,
  REMOVE_TODO,
} from "../actions/todo_actions";

const initialState = {
  todos: {
    1: {
      id: 1,
      title: "fix hulkbuster",
      body: "hulkbuster is broken",
      done: false,
    },
    2: {
      id: 2,
      title: "make fun of Thor's hair",
      body: "Use sick Point Break jokes",
      done: true,
    },
  },
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_TODOS:
      const obj = {};

      for (let i = 0; i < action.todos.length; i++) {
        obj[action.todos[i].id] = action.todos[i];
      }
      return obj;

    case RECEIVE_TODO:
      nextState[action.todo.id] = action.todo;
      return nextState;

    case REMOVE_TODO:
      delete nextState[action.todo.id];
      return nextState;

    default:
      return state;
  }
};

export default todosReducer;
