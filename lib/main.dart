import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _movieList =<String>[
    "The Shawshank Redemption",
    "The Godfather",
    "The Dark Knight",
    "The GodFather:Part II",
    "The Loard of the Rings: The Return od the King",
    "Pulp Fiction",
    "Schidler's List",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _movieList.length,
          itemBuilder:(context,index){
          return Text(_movieList[index]);
        }),
      ),
    );
  }
}

