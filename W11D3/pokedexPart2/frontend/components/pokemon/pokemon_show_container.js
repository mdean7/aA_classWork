import { connect } from 'react-redux';
import { requestAPokemon } from './../../actions/pokemon_actions';
import { selectAPokemon } from './../../reducers/selectors';
import PokemonShow from './pokemon_show';


const mapStateToProps = state => ({
    pokemon: selectAPokemon(state)
})

const mapDispatchToProps = (dispatch) => ({
    requestAPokemon: (id) => dispatch(requestAPokemon(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(PokemonShow)