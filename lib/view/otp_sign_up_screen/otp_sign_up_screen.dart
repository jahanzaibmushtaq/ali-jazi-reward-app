import 'package:al_jazi_reward_app/consts/colors.dart';
import 'package:al_jazi_reward_app/view/sign_up_screen/sign_up_phone_no.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../consts/strings.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 86,
      height: 36,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  // borderRadius:
                  // const BorderRadius.only(topLeft: radius, topRight: radius),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade100,
                      Colors.grey.shade100,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.all(40),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      appName1,
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontFamily: 'poppins_bold',
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      appName2,
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontFamily: 'poppins_bold',
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    const Text(
                      "Averification code has been sent to your mobile number via SMS",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Pinput(
                      length: 4,
                      showCursor: true,
                      onCompleted: (pin) => print(pin),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 110,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade200,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: const Text("Resend", style: TextStyle(color: darkFontGrey),)),
                        ),
                        SizedBox(
                          height: 45,
                          width: 110,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.greenAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: const Text("Continue", style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(()=>const SignUpWithPhoneNo());
                            },
                            child: const Text(
                              "Edit Phone Number ?",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}