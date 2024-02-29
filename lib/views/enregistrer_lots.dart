import 'package:flutter/material.dart';
import 'package:tombola/data/lots.dart';
//import 'package:tombola/views/creer_lots.dart';

class Enregistrer_Lots extends StatefulWidget {
  const Enregistrer_Lots({super.key});

  @override
  State<Enregistrer_Lots> createState() => _Enregistrer_LotsState();
}

class _Enregistrer_LotsState extends State<Enregistrer_Lots> {
  TextEditingController _produitsController = TextEditingController();
  TextEditingController _quantitiesController = TextEditingController();

  List<String> produits = [];
  List<String> quantites = [];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nome de l'establissement",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(250, 208, 85, 1),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(
                'Enregistrer Lots',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                controller: _produitsController,
                decoration: InputDecoration(
                  labelText: 'Produit',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _quantitiesController,
                decoration: InputDecoration(
                  labelText: 'Quantité',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(250, 208, 85, 1)),
                  onPressed: () {
                    
                    String produit = _produitsController.text;
                    String quantite = _quantitiesController.text;
                    setState(() {
                      produits.add(produit);
                      quantites.add(quantite);
                    });
                  },
                  child: Text(
                    'Valider',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              ListView(
                shrinkWrap: true,
                children: [
                  for (String produit in produits)
                    for (String quantite in quantites)
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                            Text('x ${quantite}'),
                            Text(produit),
                          ],
                        ),
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
