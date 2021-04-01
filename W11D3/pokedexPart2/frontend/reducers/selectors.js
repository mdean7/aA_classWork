export const selectAllPokemon = (state) => {
  return Object.values(state.entities.pokemon)
}

export const selectAPokemon = (state) => {
  // console.log(state.entities.pokemon)
  return Object.values(state.entities.pokemon)
}