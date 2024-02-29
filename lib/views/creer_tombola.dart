import 'package:flutter/material.dart';


class CreateTombola extends StatelessWidget {


   CreateTombola({super.key});


  final TextEditingController _heure = TextEditingController();
  final TextEditingController _lots = TextEditingController();
  final TextEditingController _gagnants = TextEditingController();
  final TextEditingController _alcool = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 208, 85,1),
        title: Text("Nome de l'établissement",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: Text('Créer une Tombola',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
              ),
            
            SizedBox(
              width: 400,
              child: TextField(
                controller: _heure,
                keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Heure lancement Tombola',
                    helperText: 'Ex: 02/02/2024',
                    border: OutlineInputBorder(
                      
                    ),
                  ),
                
              ),
            ), 
        
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
                width: 400,
                child: TextField(
                  controller: _lots,
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Nombre de Lots',
                      helperText: 'Ex: 123',
                      border: OutlineInputBorder(
                        
                      ),
                    ),
                  
                ),
              ),
          ), 
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
                width: 400,
                child: TextField(
                  controller: _gagnants,
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Nombre de gagnants',
                      helperText: 'Ex: 20',
                      border: OutlineInputBorder(
                        
                      ),
                    ),
                  
                ),
              ),
          ), 
        
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(
                width: 400,
                child: TextField(
                  controller: _alcool,
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Lots contenet de l'alcool ",
                      helperText: 'Ex: 20',
                      border: OutlineInputBorder(
                        
                      ),
                    ),
                  
                ),
              ),
          ),  
        
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: 150,
                child: ElevatedButton(onPressed: (){
                  print('Heure de la tombola: ${_heure.text}');
                  print('Nombre de Lots: ${_lots.text}');
                  print('Gagnants: ${_gagnants.text}');
                  print('Lots alcool ${_alcool.text}');
                },
                  child: Text('Valider'),

                  //Navigator.push(context,
                 // MaterialPageRoute(builder: (context) => TirageADM(cours: Text('), tombola: 'Tombola')));
                //},
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(250, 208, 85, 1),
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                 ),
                 )
              ),
            ),          
            ],
          ),
        ),
      ),
    );
  }
}