import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/form_pet_screen.dart';
import 'package:lifepet_app/screens/pet/perfil_pet_screen.dart';
import 'package:lifepet_app/services/pet_service.dart';

class HomeScreen extends StatelessWidget {
  PetService service = PetService();
  List<Pet> pets = [];

  HomeScreen() {
    _getAllPets();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemBuilder: (context, index) {
            return _petCard(context, index);
          },
          itemCount: pets.length),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const FormPetScreen(),
              ),
            );
          },
          label: const Text("Cadstrar"),
          icon: const Icon(Icons.pets),
          backgroundColor: Colors.redAccent),
    );
  }

  Widget _petCard(BuildContext c, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(c).push(MaterialPageRoute(
          builder: (_) => PerfilPetScreen(pet: pets[index]),
        ));
      },
      child: Padding(
          padding: const EdgeInsets.only(
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: pets[index].id,
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(pets[index].imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pets[index].nome,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pets[index].descricao,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void _getAllPets() {
    List list = service.getAllPets();
    pets = list;
  }
}
