import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:embroidery_app/designs/Smallmachines.dart';
import 'package:embroidery_app/designs/chain.dart';
import 'package:embroidery_app/designs/cording.dart';
import 'package:embroidery_app/designs/multi.dart';
import 'package:embroidery_app/designs/sequins.dart';
import 'package:flutter/material.dart';

class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  int index = 0;
  double leftWidth = 75.0;
  int leftTextColor = 1;
  int leftBackgroundColor = 0;
  final List<Color> colorPallete = <Color>[
    Color.fromARGB(255, 101, 141, 137),
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.blueAccent,
    Colors.red,
    Colors.redAccent,
    Colors.teal,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.lime,
    Colors.green
  ];
  final List<DrawerItem> _drawerItems = <DrawerItem>[
    const DrawerItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const DrawerItem(icon: Icon(Icons.login), label: "Login"),
    const DrawerItem(icon: Icon(Icons.app_registration), label: "Registration"),
    const DrawerItem(icon: Icon(Icons.info), label: "About Us"),
    const DrawerItem(icon: Icon(Icons.question_answer), label: "Inquiry"),
    const DrawerItem(
      icon: Icon(Icons.phone),
      label: "Contact Us",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CurvedDrawer(
          //index: index,
          width: leftWidth,
          color: colorPallete[leftBackgroundColor],
          buttonBackgroundColor: colorPallete[leftBackgroundColor],
          labelColor: colorPallete[leftTextColor],
          items: _drawerItems,
          onTap: (newIndex) {
            setState(() {
              print(newIndex);
              index = newIndex;
            });
          },
        ),
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
            "Embroidery Designs",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Color.fromARGB(255, 15, 88, 73),
                Colors.black,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.80,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    index == 0
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Multi(),
                            ))
                        : index == 1
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Cording(),
                                ))
                            : index == 2
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Sequins(),
                                    ))
                                : index == 3
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Chain(),
                                        ))
                                    : index == 4
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const SmallM(),
                                            ))
                                        : null;
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      image: DecorationImage(image: img[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
  
  List<NetworkImage> img = [
    const NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlwLPl49YO4VrCTZSmDQVekPJ7bbXfDkPJwYd8luC029XRiYSBDV3uRxELqoHAtb72HgA&usqp=CAU"),
    const NetworkImage(
        "https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1309202155539_6-fileminimizer.jpg"),
    const NetworkImage(
        "https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1904202120314_1304-2-fileminimizer.jpg"),
    const NetworkImage(
        "https://i.pinimg.com/564x/f3/27/d7/f327d7397db0a1624d2063c38fb579e6.jpg"),
    const NetworkImage(
        "https://embspace.sgp1.digitaloceanspaces.com/Embcart/Designs/1708202105724_design2.jpg"),
  ];
}
