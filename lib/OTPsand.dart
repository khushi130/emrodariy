import 'package:embroidery_app/homepage.dart';
import 'package:embroidery_app/widget.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otpsand extends StatefulWidget {
  const Otpsand({super.key});

  @override
  State<Otpsand> createState() => _OtpsandState();
}

class _OtpsandState extends State<Otpsand> {
  OtpFieldController otpController = OtpFieldController();
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
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        s(context),
                        Image(
                          image: const AssetImage("assets/image/pngwing.com.png"),
                          height: MediaQuery.of(context).size.height / 3.50,
                        ),
                        s(context),
                        OTPTextField(
                            //obscureText: true,
                            otpFieldStyle: OtpFieldStyle(
                                borderColor: Colors.white,
                                enabledBorderColor: Colors.white,
                                focusBorderColor: Colors.white),
                            controller: otpController,
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceEvenly,
                            fieldWidth: 45,
                            fieldStyle: FieldStyle.box,
                            outlineBorderRadius: 5,
                            style: const TextStyle(
                                fontSize: 25, color: Colors.white),
                            onChanged: (pin) {
                              // ignore: avoid_print
                              print("Changed: " + pin);
                            },
                            onCompleted: (pin) {
                              // ignore: avoid_print
                              print("Completed: " + pin);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const Home(),
                              //     ));
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        Text(
                          "Didn't Receive OTP ? 00:29",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 25,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HOME(),
                                ));
                          },
                          child: Container(
                            width: 200,
                            height: 45,
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
                                'SUMBIT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ))));
  }
}
