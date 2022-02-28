// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FormPetScreen extends StatefulWidget {
  const FormPetScreen({Key? key}) : super(key: key);

  @override
  _FormPetScreenState createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
  String corPet = 'Branco';
  String sexoPet = 'Macho';
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
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: "Bio"),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: "Idade"),
                ),
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
                ),
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
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
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
