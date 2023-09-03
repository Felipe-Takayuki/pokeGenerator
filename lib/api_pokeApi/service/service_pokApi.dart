import 'dart:math';

import 'package:pokealeatorio/api_pokeApi/auth/auth_pokeapi.dart';
import 'package:pokealeatorio/api_pokeApi/models/pokemon_model.dart';

class PokemonService {

  Future<PokemonModel> randomPokemonService () async {
    int randomPokemon = Random().nextInt(907);
     return Auth().authenticator(randomPokemon.toString());
     
  }
  
}