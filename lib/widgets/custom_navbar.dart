import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/pet/perfil_pet_screen.dart';
import 'package:lifepet_app/screens/pet/remedio_pet_screen.dart';

class CustomNavbar extends StatefulWidget {
  late int openPage;

  final Pet pet;
  CustomNavbar({required this.pet, required this.openPage});

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  late Widget currentPage;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white70,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      widget.openPage = 0;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (_) => PerfilPetScreen(pet: widget.pet)),
                    );
                  },
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.pets,
                        color: widget.openPage == 0
                            ? Colors.redAccent
                            : Colors.grey,
                      ),
                      Text(
                        "Perfil",
                        style: TextStyle(
                          color: widget.openPage == 0
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      widget.openPage = 1;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (_) => RemedioPetScreen(pet: widget.pet)),
                    );
                  },
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.healing,
                        color: widget.openPage == 1
                            ? Colors.redAccent
                            : Colors.grey,
                      ),
                      Text(
                        "Remédio",
                        style: TextStyle(
                          color: widget.openPage == 1
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.openPage = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_hospital,
                        color: widget.openPage == 2
                            ? Colors.redAccent
                            : Colors.grey,
                      ),
                      Text(
                        "Consulta",
                        style: TextStyle(
                          color: widget.openPage == 2
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.openPage = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event_note,
                        color: widget.openPage == 3
                            ? Colors.redAccent
                            : Colors.grey,
                      ),
                      Text(
                        "Anotações",
                        style: TextStyle(
                          color: widget.openPage == 3
                              ? Colors.redAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
