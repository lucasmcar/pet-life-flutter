import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class FormRemedioPetScreen extends StatelessWidget {
  Pet pet;
  FormRemedioPetScreen({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Remédio")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration:
                      const InputDecoration(labelText: "Nome do Remédio"),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration:
                      const InputDecoration(labelText: "Data do remédio"),
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
                        "Cadastrar Remédio",
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
