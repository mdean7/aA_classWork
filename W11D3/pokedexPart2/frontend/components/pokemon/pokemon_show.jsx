import React from 'react';

class PokemonShow extends React.Component{
    constructor(props){
       super(props)
    }

    componentDidMount() {
        // how do we access id? in props?
        this.props.requestAPokemon(this.props.match.params.id)
    }
    
    render(){
        
        console.log(this.props);
        return (
            <ul>
                <li>
                    <h1>HI</h1>
                    <img src={this.props.pokemon.imageUrl}/>
                </li>
            </ul>
        )

    }




}

export default PokemonShow;