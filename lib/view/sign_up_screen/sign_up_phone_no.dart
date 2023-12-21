import 'package:al_jazi_reward_app/consts/strings.dart';
import 'package:al_jazi_reward_app/view/otp_sign_up_screen/otp_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpWithPhoneNo extends StatefulWidget {
  const SignUpWithPhoneNo({Key? key}) : super(key: key);

  @override
  State<SignUpWithPhoneNo> createState() => _SignUpWithPhoneNoState();
}

class _SignUpWithPhoneNoState extends State<SignUpWithPhoneNo> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+974";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              height: 45,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            controller: countryController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const Text(
                          "|",
                          style: TextStyle(fontSize: 33, color: Colors.greenAccent),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone",
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Get.to(()=>const OtpScreen());
                        },
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
