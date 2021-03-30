import React from "react";
import { Provider } from "react-redux";
import { App } from "./components/app";

export const Root = ({ store }) => {
  // props.store
  console.log(store);
  return (
    <Provider store={store}>
      <App />
    </Provider>
  );
};
