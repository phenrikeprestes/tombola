import 'package:flutter/material.dart';

class Statistiques extends StatefulWidget {
  const Statistiques({super.key});

  @override
  State<Statistiques> createState() => _StatistiquesState();
}

class _StatistiquesState extends State<Statistiques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nome de l' établlissment"),
        backgroundColor: Color.fromRGBO(250, 208, 85, 1),
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            child: Text('Statistiques'),
          ),
          Container(
            child: Column(
              children: [
                Row(),
                Row(),
                Row(),
                Row(),
                Row(),
              ],
            ),
          )
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer), label: 'Matchs'),  
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ]),
    );
  }
}