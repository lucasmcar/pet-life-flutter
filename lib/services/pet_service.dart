import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class PetService {
  final List<Pet> _listPets = [];

  static final PetService _singleton = PetService._internal();

  factory PetService() {
    return _singleton;
  }
  PetService._internal() {
    _listPets.add(Pet(
        nome: "Toto",
        bio: "Toto esperto",
        idade: 2,
        sexo: "Macho",
        descricao: "Sou marrom",
        cor: "Marrom",
        imageUrl: 'assets/images/toto.jpg'));
  }

  void addPet(Pet pet) {
    _listPets.add(Pet(
      nome: pet.nome,
      bio:  pet.bio,
      idade: pet.idade,
      sexo: pet.sexo,
      descricao:  pet.descricao,
      cor: pet.cor,
      id: Random().nextInt(100).toString(),
      imageUrl: "assets/images/toto.jpg",
    ));
  }

  List getAllPets() {
    return _listPets;
  }
}
