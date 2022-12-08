import 'package:embroidery_app/openimg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Desingpic extends StatefulWidget {
  const Desingpic({super.key});

  @override
  State<Desingpic> createState() => _DesingpicState();
}

class _DesingpicState extends State<Desingpic> {
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
          "embroidery",
          style: TextStyle(color: Colors.black),
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
        child: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.70,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Openimg(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://prititrendz.com/wp-content/uploads/2022/08/PHOTO-2022-08-08-15-20-3481.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 15,
                      right: 15,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (_color == Colors.white) {
                                _color = Colors.red;
                              }
                              else {
                                _color = Colors.white;
                              }
                              
                            });
                          },
                          child: FaIcon(FontAwesomeIcons.heart, color: _color)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
  Color _color = Colors.white;
}