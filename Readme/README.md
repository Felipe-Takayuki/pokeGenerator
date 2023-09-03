# PokeGenerator

Este foi um projeto feito apenas por diversão, por este motivo não está muito otimizado, mas caso queira melhorar o código fique a vontade, mas basicamente o app gera a imagem de um pokemon e o nome na tela do dispositivo aleatoriamente quando o botão é clicado

Este projeto utiliza a API PokeAPI mais especificamente no endpoint [https://pokeapi.co/docs/v2#pokemon-forms](https://pokeapi.co/docs/v2#pokemon-forms) onde usa três informações `id, name e front_default` 

e outro adicional é a utilização do package http para fazer a requisição a está API.

Ok, agora irei explicar partes do código em que eu julgo serem mais relevantes

```dart
Future<PokemonModel> randomPokemonService () async {
    int randomPokemon = Random().nextInt(907);
     return Auth().authenticator(randomPokemon.toString());
     
  }
```

essa parte do código gera um pokemon aleatório através da função que já é do dart **`Random`** e passando esse valor no endpoint e dessa forma retornado este no formato do meu model PokemonModel 

```dart
String pokename = "";
  var imageurl = "";
  void pokerandom() async{
     PokemonModel model = await  PokemonService().randomPokemonService();
     pokename = model.name;
     imageurl = model.frontDefault;
    update(pokename, imageurl);
  }
  void update(String name, var image){
    setState(() {
      name;
      image;
    });
  }
```

como os próprios nomes das funções já dizem uma gera o pokemon(chamando a função randomPokemonService( ) e a outra update atualiza as informações da tela utilizando o setState 

![Untitled](PokeGenerator%206d840af515434d06bf90575f619ecda6/Untitled.png)

![Untitled](PokeGenerator%206d840af515434d06bf90575f619ecda6/Untitled%201.png)