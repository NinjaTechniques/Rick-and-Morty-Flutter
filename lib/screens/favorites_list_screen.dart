import 'package:flutter/material.dart';
import 'package:rick_morty_app/dao/character_dao.dart';
import 'package:rick_morty_app/models/character.dart';

class FavoritesListScreen extends StatelessWidget {
  const FavoritesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favorite characters"),
      ),
      body: const FavoriteList(),
    );
  }
}

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  List<Character> _favorites = [];
  final CharacterDao _characterDao = CharacterDao();

  fetchFavorites() {
    _characterDao.fetchFavorites().then(
      (value) {
        if (mounted) {
          setState(() {
            _favorites = value;
          });
        }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    fetchFavorites();

    return ListView.builder(
      itemCount: _favorites.length,
      itemBuilder: (context, index) => FavoriteItem(
        favoriteCharacter: _favorites[index],
        callBack: () {
          _characterDao.delete(_favorites[index]);
        },
      )
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final Character favoriteCharacter;
  final Function callBack;

  const FavoriteItem({
    super.key, 
    required this.favoriteCharacter, 
    required this.callBack
  });

  @override
  Widget build(BuildContext context) {

    MaterialColor color;

    switch (favoriteCharacter.status) {
      case "Alive":
        color = Colors.green;
        break;
      case "Dead":
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
        break;
    }

    double width = MediaQuery.of(context).size.width / 5;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 47, 47, 47),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                favoriteCharacter.image,
                width: width,
                height: width,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NAME: ${favoriteCharacter.name}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("STATUS: ${favoriteCharacter.status}"),
                    const SizedBox(height: 8),
                    Icon(
                      Icons.circle, 
                      color: color, 
                      size: 20
                    ),
                  ],
                )
              ),
            ),
            IconButton(
              onPressed: () {
                callBack();
              },
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 181, 91, 84),
              ),
            ),
          ]
        ),
      ),
    );
  }
}