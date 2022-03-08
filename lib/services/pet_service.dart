import 'package:lifepet_app/models/pet_model.dart';

class PetService {
  final List<Pet> _listPets = [];

  PetService() {
    
  }

  void addPet(Pet pet) {
    _listPets.add(Pet(
      nome: pet.nome,
      bio: pet.bio,
      idade: pet.idade,
      sexo: pet.sexo,
      descricao: pet.descricao,
      cor: pet.cor,
      imageUrl: 'assets/images/toto.jpg'
    ));
  }

  List getAllPets() {
    return _listPets;
  }
}
