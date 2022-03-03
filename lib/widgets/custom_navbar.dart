import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.pets,
                        color: Colors.redAccent,
                      ),
                      const Text(
                        "Perfil",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.healing,
                        color: Colors.redAccent,
                      ),
                      const Text(
                        "Remédio",
                        style: TextStyle(
                          color: Colors.redAccent,
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
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_hospital, color: Colors.redAccent),
                      Text(
                        "Consulta",
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event_note,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Anotações",
                        style: TextStyle(
                          color: Colors.redAccent,
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
