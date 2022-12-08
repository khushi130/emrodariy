import 'package:embroidery_app/desing.dart';
import 'package:flutter/material.dart';

class Sequins extends StatefulWidget {
  const Sequins({super.key});

  @override
  State<Sequins> createState() => _SequinsState();
}

class _SequinsState extends State<Sequins> {
  int? sno;
  List<bool> _isselected = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[
                  Color.fromARGB(255, 101, 141, 137),
                  Colors.white,
                  Color.fromARGB(255, 101, 141, 137),
                ]),
          )),
          title: const Text(
            "Sequins Designs",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromARGB(255, 93, 144, 139),
            );
          },
          itemCount: SequinsSarees.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  sno = index;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Desingpic(),
                      ));
                });
              },
              dense: false,
              enabled: true,
              tileColor: sno == index
                  ? const Color.fromARGB(255, 93, 144, 139)
                  : const Color.fromARGB(255, 3, 44, 35),
              //selectedTileColor: Color.fromARGB(255, 101, 141, 137),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 93, 144, 139),
                  //image: DecorationImage(image: Cordingimg[index],fit: BoxFit.cover),
                ),
              ),
              title: Text(SequinsSarees[index],style: const TextStyle(color: Colors.white),),
            );
          },
        ));
  }

  List<String> SequinsSarees = [
  "Sequins Sarees",
  "Sequins Lehengha",
  "Sequins Allover-Garment",
  "Sequins Top Duptts",
  "Sequins Lace",
  "Sequins Butta",
  "Sequins Blouse",
  "Sequins Single Head",
  "Sequins Lakhnavi Test",
  "Sequins Small Fancy Butti",
  "Sequins Neck",
  "Sequins God designs",
];
}
