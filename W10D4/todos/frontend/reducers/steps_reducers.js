import {
  RECEIVE_STEPS,
  RECEIVE_STEP,
  REMOVE_STEP,
} from "../actions/steps_actions";

const initialState = {
  1: {
    id: 1,
    title: "get tools",
    done: false,
    todo_id: 1,
  },
};

const stepsReducer = (state = initialState, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STEPS:
      const obj = {};

      for (let i = 0; i < action.steps.length; i++) {
        obj[action.steps[i].id] = action.steps[i];
      }
      return obj;

    case RECEIVE_STEP:
      nextState[action.step.id] = action.step;
      return nextState;

    case REMOVE_STEP:
      delete nextState[action.step.id];
      return nextState;

    default:
      return state;
  }
};

export default stepsReducer;
