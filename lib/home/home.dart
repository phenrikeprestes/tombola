import 'package:flutter/material.dart';
import 'package:tombola/models/game_adm_models.dart';
import 'package:tombola/models/home_adm_model.dart';
import 'package:tombola/views/creer_tombola.dart';
import 'package:tombola/views/enregistrer_lots.dart';
import 'package:tombola/views/statistiques.dart';
import 'package:tombola/views/tombola_cloture.dart';



class Home extends StatefulWidget {
  final Home_ADM_Model home_adm_model = Home_ADM_Model(id: '001', name: "Bar de La Sardine", tombola: 'Tombola', cours: 'En cours', participants: '2456 participants');
  final gameAdmModel game_adm_model = gameAdmModel(id: '001', team1: Image.asset('images/marseille.png'), team2: Image.asset('name'), hour: '20:45', date: '03/02/24', game: 'J-38'); 
   
 
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('Hello ${widget.home_adm_model.name}'),
            ),
            Text('Actuellement',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 11,
            ),
            ),
            
          ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 400,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tombola'),
                                    Text('En cours')
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('2456 participants',
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                    ),
                                
                                    SizedBox(
                                      width:65 ,
                                      height: 30,
                                      child: Container(
                                        child: Center(child: Text('J-38')),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(250, 208, 85, 1),
                                        borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)
                                      )),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset('images/marseille.png',
                                    width: 70,
                                    ),
                                  ),
                                  const Text('Olympique de Marseille',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 9
                                  ),
                                  ),
                                ],
                              ),
                               Column(
                                 children: [
                                   Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Text('20/02/24',
                                    
                                    ),
                                     
                                                           ),
                                    Container(
                                    padding: const EdgeInsets.all(2),
                                    child: Text('20:45',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30
                                    ),
                                    ),
                                    ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset('images/toulon.png',
                                    width: 80,
                                    ),
                                      ),
                
                                  Text('As Pantoufle',
                                  style: TextStyle(
                                    fontSize: 9
                                  ),
                                  )    
                                 ],
                               ),
                                ],
                              ),
                
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(onPressed: (){
                                      Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => TombolaCloture())
                                       );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(250, 208, 85, 1),
                                      foregroundColor: Colors.black,
                                    ),
                                    child: Text('Lancer le Tirage'),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: ElevatedButton(onPressed: (){
                
                                        Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Enregistrer_Lots())
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                      ),
                                      child: Text('Lots'),
                                      ),
                                    ),
                
                
                                  ],
                                ),
                              )
                
                           
                          
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(128.0),
                child: Column(
                  children: [
                    FloatingActionButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateTombola())
                      );
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Color.fromRGBO(216, 216, 216, 1),
                    foregroundColor: Colors.grey[500],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Créer une Tombola',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey[500],
                      ),
                      ),
                    )
                  ],
                ),
              ),
              ],
            ),
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