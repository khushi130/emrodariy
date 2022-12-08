import 'package:embroidery_app/desing.dart';
import 'package:flutter/material.dart';

class Chain extends StatefulWidget {
  const Chain({super.key});

  @override
  State<Chain> createState() => _ChainState();
}

class _ChainState extends State<Chain> {
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
            "Chain Stitch Designs",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 2,
              thickness: 2,
              color: Color.fromARGB(255, 93, 144, 139),
            );
          },
          itemCount: Chainstitchdesings.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                setState(() {
                  sno = index;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Desingpic(),
                      ));
                });
              },
              dense: false,
              enabled: true,
              tileColor: sno == index
                  ? Color.fromARGB(255, 93, 144, 139)
                  : Color.fromARGB(255, 3, 44, 35),
              //selectedTileColor: Color.fromARGB(255, 101, 141, 137),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 93, 144, 139),
                  //image: DecorationImage(image: Cordingimg[index],fit: BoxFit.cover),
                ),
              ),
              title: Text(Chainstitchdesings[index],style: TextStyle(color: Colors.white),),
            );
          },
        ));
  }

  List<String> Chainstitchdesings = [
  "Chain Sarees",
  "Chain Single Head Dress",
  "Chain Allover Garment",
  "Chain Top Duptta",
  "Chain Lehengha",
  "Chain Lace",
  "Chain Butta",
  "Chain Blouse",
  "Chain Neck",
  "Chain Anarkali",                                                                                
  "Chain Figure Concept",
  "Chain Central Panal Top",
];
}
