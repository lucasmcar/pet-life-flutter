import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class RemedioPetScreen extends StatelessWidget {
  final Pet pet;
  RemedioPetScreen({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Hero(
                tag: pet.id,
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pet.imageUrl), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Remédios",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Card(
                elevation: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Container(
                  child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      leading: Container(
                          padding: const EdgeInsets.only(right: 12),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                  width: 1.0, color: Colors.redAccent),
                            ),
                          ),
                          child: const Icon(Icons.healing, color: Colors.redAccent)),
                      title: Text(pet.nome,
                          style: const TextStyle(fontWeight: FontWeight.w400)),
                      subtitle: Text(pet.descricao)),
                ),
              ),
            ],
          )),
        ]),
    );
  }
}
