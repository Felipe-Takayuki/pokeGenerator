import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/pokemon_model.dart';
class Auth{

  Future<PokemonModel> authenticator( String pokeID)  async {
    final url = Uri.parse("https://pokeapi.co/api/v2/pokemon-form/$pokeID");
    final response = await http.get(url);
    final map = jsonDecode(response.body);
    if(response.statusCode == 200){
     
    }
    else {
      print("ERROR");
    }
   PokemonModel pokemon =  PokemonModel(id: map['id'], name: map['name'], frontDefault: map['sprites']['front_default']);
    return pokemon;
  }
}