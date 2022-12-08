import 'package:embroidery_app/desing.dart';
import 'package:flutter/material.dart';

class SmallM extends StatefulWidget {
  const SmallM({super.key});

  @override
  State<SmallM> createState() => _SmallMState();
}

class _SmallMState extends State<SmallM> {
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
            "Small Machines Designs",
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
          itemCount: smallmachinesdesings.length,
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
              title: Text(smallmachinesdesings[index],style: const TextStyle(color: Colors.white),),
            );
          },
        ));
  }

List<String> smallmachinesdesings = [
  "South Indian Blouse (Jef+Dst)",
  "Creative Flowers(Jef_Dst)",
  "Figure Design(Jef+Dst)",
  "Alphabets & Numbers",
  "Cartoons(Jef+Dst+Emb)",
  "Vehicles(Dst+Pes+Jef)",
  "Logo Designs(Dst+Pes)",
  "Baby Applique(Dst+Jef+Pes)",
  "Art &  Craft(Dst+Jef+Pes)",
  "Birds &  Animal (Jef+Pes+Dst)",
  "Sports(Dst+Jef+Pes)",
  "Lace(Jef+Dst)",
  "Food(Dst+Jef+Pes)",
];
}
