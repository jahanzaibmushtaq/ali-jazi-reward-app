
import 'package:al_jazi_reward_app/consts/consts.dart';

Widget roundedButton({onPress,
  String? title,
  Color? textColor,
  Color? buttonColor,
  double? width,
  double? height}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
      fixedSize: Size(width ?? 200, height ?? 40),
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(22),
      ),
    ),
      onPressed: onPress,
      child: Text(
        title ?? 'Click here',
        style: TextStyle(color: textColor, fontSize: 14),
      ));
}
