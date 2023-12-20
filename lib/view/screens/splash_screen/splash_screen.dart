
import 'package:al_jazi_reward_app/consts/consts.dart';
import 'package:al_jazi_reward_app/view/screens/custom_widgets/rounded_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(160);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            const Text(
              welcome,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              appName1,
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontFamily: 'poppins_bold',
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              appName2,
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontFamily: 'poppins_bold',
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 100,),
             Expanded(
               child: Container(
                 decoration:  BoxDecoration(
                   borderRadius:
                   const BorderRadius.only(topLeft: radius, topRight: radius),
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
                 child: Column(
                   children: [
                     const SizedBox(
                       height: 70,
                     ),
                     roundedButton(
                         title: splButtonName,
                         textColor: Colors.white,
                         buttonColor: Colors.greenAccent,
                         onPress: () {}),
                     const SizedBox(
                       height: 20,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         const Text(doNotHaveAccount),
                         TextButton(onPressed:() {}, child:const Text(signUp, style: TextStyle(color: Colors.greenAccent),),
                         ),
                       ],
                     )
                   ],
                 ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
