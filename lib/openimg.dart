import 'package:flutter/material.dart';

class Openimg extends StatefulWidget {
  const Openimg({super.key});

  @override
  State<Openimg> createState() => _OpenimgState();
}

class _OpenimgState extends State<Openimg> {
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
        title: Text("imagecode",style: TextStyle(color: Colors.black),),
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
          image: DecorationImage(
            image: NetworkImage("https://prititrendz.com/wp-content/uploads/2022/08/PHOTO-2022-08-08-15-20-3481.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}