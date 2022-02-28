// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FormPetScreen extends StatefulWidget {
  const FormPetScreen({Key? key}) : super(key: key);

  @override
  _FormPetScreenState createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
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
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: "Sexo"),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(labelText: "Descrição"),
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
