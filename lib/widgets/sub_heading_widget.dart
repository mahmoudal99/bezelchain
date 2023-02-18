import 'package:bezel_chain/all_utilities.dart';

class SubHeading extends StatelessWidget {
  String value;
  double fontSize;
  TextStyle? textStyle;
  FontWeight fontWeight;
  Color color;


  SubHeading({Key? key, required this.value, fontSize, this.textStyle, this.color = Colors.black, this.fontWeight = FontWeight.bold})
      : fontSize = (fontSize ?? Dimensions.font18),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.center,
      style: textStyle ?? GoogleFonts.montserrat(fontSize: fontSize, color: color, fontWeight: fontWeight),
    );
  }
}
