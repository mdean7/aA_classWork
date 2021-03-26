import { connect } from "react-redux";
import TodoList from "./todo_list";
import { allTodos } from "../../frontend/reducers/selectors";
import * as todoActions from "../../frontend/actions/todo_actions";

const mapStateToProps = (state) => ({
  todos: allTodos(state),
});

const mapDispatchToProps = (dispatch) => ({
  receiveTodo: (todo) => dispatch(todoActions.receiveTodo(todo)),
});

export default connect(mapStateToProps, mapDispatchToProps)(TodoList);
