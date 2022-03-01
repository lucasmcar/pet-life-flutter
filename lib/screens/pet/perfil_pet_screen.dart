import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class PerfilPetScreen extends StatelessWidget {
  final Pet pet;
  PerfilPetScreen({required this.pet});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pet.nome,
                      style: TextStyle(
                        fontFamily: "Monserrat",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pet.descricao,
                      style: TextStyle(
                          fontFamily: "Monserrat",
                          fontSize: 16,
                          color: Colors.grey),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
