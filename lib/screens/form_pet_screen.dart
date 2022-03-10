// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/home_screen.dart';
import 'package:lifepet_app/services/pet_service.dart';

class FormPetScreen extends StatefulWidget {
  const FormPetScreen({Key? key}) : super(key: key);

  @override
  _FormPetScreenState createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
  String corPet = 'Branco';
  String sexoPet = 'Macho';

  final _nomeController = TextEditingController();
  final _bioController = TextEditingController();
  final _idadeController = TextEditingController();
  final _descricaoController = TextEditingController();
  PetService service = PetService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Pet"),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(labelText: "Nome do Pet"),
                    controller: _nomeController),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(labelText: "Bio"),
                    controller: _bioController),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Idade"),
                    controller: _idadeController),
                DropdownButtonFormField(
                  value: sexoPet,
                  onChanged: (String? sexoSelecionado) {
                    setState(() {
                      sexoPet = sexoSelecionado!;
                    });
                  },
                  items: <String>['Macho', 'Femea']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(labelText: "Descrição"),
                    controller: _descricaoController),
                DropdownButtonFormField(
                  value: corPet,
                  onChanged: (String? corSelecionada) {
                    setState(() {
                      corPet = corSelecionada!;
                    });
                  },
                  items: <String>['Branco', 'Preto', 'Marron', 'Amarelo']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 10),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Pet newPet = Pet(
                            nome: _nomeController.text,
                            bio: _bioController.text,
                            idade: int.parse(_idadeController.text),
                            sexo: sexoPet,
                            descricao: _descricaoController.text,
                            cor: corPet);
                        service.;
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      color: Colors.redAccent,
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
