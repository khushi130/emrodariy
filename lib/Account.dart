import 'package:embroidery_app/homepage.dart';
import 'package:embroidery_app/loginpage.dart';
import 'package:embroidery_app/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
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
      child: Stack(
        children: [
          Column(
            children: [
              s(context),
              Image(
                image: const AssetImage("assets/image/pngwing.com.png"),
                height: MediaQuery.of(context).size.height / 3.50,
              ),
              s(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'),
                        allow: false),
                  ],
                  //controller: bname,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20,
                      color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "NAME",
                    hintStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              s(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp(r'[0-9]{10}'),
                        allow: false)
                  ],
                  //controller: bname,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20,
                      color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "PHONE NUMBER",
                    hintStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              s(context),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HOME(),
                      ));
                },
                child: Container(
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        // Colors.white,
                        Color.fromARGB(255, 101, 141, 137),
                        Colors.white,
                        Color.fromARGB(255, 101, 141, 137),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Submint',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 5,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Loginpage(),
                          ));
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      "   Go To Login  ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const HOME(),));
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      "Skip Registration",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
        ],
      ),
    )));
  }
}
