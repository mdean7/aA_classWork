import React from "react"
import { Route, Switch } from "react-router-dom";
import PokemonIndexContainer from './../components/pokemon/pokemon_index_container';
import PokemonShowContainer from './../components/pokemon/pokemon_show_container';

export const App = () => (
  <Switch>
    <Route exact path="/" component={PokemonIndexContainer} />
    <Route path="/pokemon/:id" component={PokemonShowContainer} />
  </Switch>
) 