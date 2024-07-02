
import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier{
  final List<String> _movieList =[

     "The Shawshank Redemption",
    "The Godfather",
    "The Dark Knight",
    "The GodFather:Part II",
    "The Loard of the Rings: The Return od the King",
    "Pulp Fiction",
    "Schidler's List",
  ];
  List<String> get movieList => _movieList;

  List<String> loadMovies(){
    _movieList.add("addes a new movie");
    notifyListeners();
    return _movieList;
  }
}