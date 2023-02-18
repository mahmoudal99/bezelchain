import 'package:bezel_chain/all_utilities.dart';

class Paragraph extends StatelessWidget {
  String value;
  double fontSize;
  TextStyle? textStyle;
  bool alignCenter;
  Color color;


  Paragraph({Key? key, required this.value, fontSize, this.textStyle, this.color = Colors.black, this.alignCenter = false})
      : fontSize = (fontSize ?? Dimensions.font18),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: alignCenter ? TextAlign.center :  TextAlign.left,
      style: textStyle ?? GoogleFonts.montserrat(fontSize: fontSize, color: color),
    );
  }
}
