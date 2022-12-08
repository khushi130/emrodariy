import 'package:embroidery_app/desing.dart';
import 'package:flutter/material.dart';

class Cording extends StatefulWidget {
  const Cording({super.key});

  @override
  State<Cording> createState() => _CordingState();
}

class _CordingState extends State<Cording> {
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
            "Cording Designs",
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
          itemCount: cording.length,
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
                  image: DecorationImage(image: Cordingimg[index],fit: BoxFit.cover),
                ),
              ),
              title: Text(cording[index],style: const TextStyle(color: Colors.white),),
            );
          },
        ));
  }

  List<String> cording = [
    "Cording Sarees",
    "Cording Lace",
    "Cording Lehengha",
    "Cording Allover",
    "Cording Single Head Dresses",
    "Cording Nack",
    "Cording Blouse",
    "Cording Butta",
    "Cording Anarkali",
  ];
  List<NetworkImage> Cordingimg = [
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/20022019235817_comp-12-cc.jpeg"),
    const NetworkImage("https://i.pinimg.com/564x/15/58/53/1558538233e97631174ef83a3155341d--lace-design-floral-lace.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1504202222710_dus-2-fileminimizer.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/0904201922632_comp-r-127-jaal-coding-malti-200.jpeg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1104202221636_1576-top-1-color-fileminimizer.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1703202144320_1-hed-446-650-fileminimizer.jpg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/3012201931224_216-bla-fileminimizer.jpeg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1803201954309_sai-56-compress.jpeg"),
    const NetworkImage("https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/0603201935446_17019-compress.jpeg"),
  ];
}
