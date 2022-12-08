import 'package:embroidery_app/Account.dart';
import 'package:embroidery_app/OTPsand.dart';
import 'package:embroidery_app/homepage.dart';
import 'package:embroidery_app/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  s(context),
                  Image(
                    image: const AssetImage("assets/image/pngwing.com.png"),
                    height: MediaQuery.of(context).size.height / 3.50,
                  ),
                  s(context),
                  Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height / 20),
                  ),
                  s(context),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      //obscureText:true ,
                      //enableSuggestions: false,
                      //autocorrect: false,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Account(),
                            ));
                      },
                      child: const Text("Create Account",
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Otpsand(),
                          ));
                    },
                    child: Container(
                      width: 280,
                      height: 40,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 9,
                  ),
                ],
              ),
              const Positioned(
                bottom: 5,
                left: 105,
                right: 100,
                child: Center(
                    child: Text(
                  " version 0.0.1",
                  style: TextStyle(color: Colors.white60),
                )),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HOME(),
                        ));
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                    color: Colors.white,
                  )),
                  child: const Text(
                    "Skip Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
