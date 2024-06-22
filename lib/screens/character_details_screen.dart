import 'package:flutter/material.dart';
import 'package:rick_morty_app/models/character.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailsScreen({
    super.key, 
    required this.character
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          character.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            Hero(
              tag: character.id,
              child: Image.network(
                character.image, 
                width: width,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Gender: ${character.gender}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Species: ${character.species}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Status: ${character.status}",
              style: TextStyle(
                color: character.status == "Alive" ? Colors.green : Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ]
        ),
      ),
    );
  }
}