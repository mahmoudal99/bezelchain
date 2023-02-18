import 'package:bezel_chain/all_utilities.dart';

class HeadingText extends StatelessWidget {
  String value;
  double fontSize;
  TextStyle? textStyle;
  Color color;


  HeadingText({Key? key, required this.value, fontSize, this.textStyle, this.color = Colors.black})
      : fontSize = (fontSize ?? Dimensions.font30),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: textStyle ?? GoogleFonts.montserrat(fontSize: fontSize, color: color),
    );
  }
}
