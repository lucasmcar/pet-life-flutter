import 'package:lifepet_app/models/pet_model.dart';

class PetService {
  final List<Pet> _listPets = [];

  PetService() {
    _listPets.add();
  }

  List getAllPets() {
    return _listPets;
  }
}
