import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: pets[0].id,
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(pets[0].imageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pets[0].nome,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pets[0].descricao,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: pets[1].id,
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(pets[1].imageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pets[1].nome,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pets[1].descricao,
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
          )
        ],
      ),
    );
  }
}
