
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokealeatorio/api_pokeApi/models/pokemon_model.dart';
import 'package:pokealeatorio/api_pokeApi/service/service_pokApi.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
  
class _HomeState extends State<Home> {
  String pokename = "";
  var imageurl = "";
  void pokerandom() async{
     PokemonModel model = await  PokemonService().randomPokemonService();
     pokename = model.name;
     imageurl = model.frontDefault;
  
    setState(() {
      pokename;
      imageurl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
             const Spacer(),
              Container(
                width: 200,
                height: 200,
                child: imageurl == "" ? const Text("") : Image.network(imageurl, fit: BoxFit.cover), ),
              Text(pokename == "" ? "" : pokename.toUpperCase(), style: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.w900, color: const Color.fromARGB(255, 57, 51, 50)),),
              const Spacer(),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 171, 68, 68)),
                child: TextButton(onPressed: pokerandom, child:  Text("Gerar pokemon aleatório", style: GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.w700, color: const Color.fromARGB(255, 255, 255, 255)),)))
             ],
        
          ),
        ),
      ),
    );
  }
}