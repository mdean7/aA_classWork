import { RECEIVE_TODOS, RECEIVE_TODO } from "../actions/todo_actions";

const initialState = {
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
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);
 
  // debugger
  switch (action.type) {
    case RECEIVE_TODOS:
      nextState[action.todos.forEach(todo => todo.id)] = action.todo;
      return nextState;

    case RECEIVE_TODO:
      nextState[action.todo.id] = action.todo;
      return nextState;

    default:
      return state;
  }
};

export default todosReducer;
