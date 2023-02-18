import 'package:bezel_chain/all_utilities.dart';

class MessageBanner extends StatelessWidget {

  Color color;
  String title;
  String buttonText;
  Color buttonColor;

   MessageBanner({Key? key,required this.color, required this.title, required this.buttonText, this.buttonColor = redShade2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Dimensions.height100 + Dimensions.height50,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadingText(
            value: title,
            color: Colors.white,
            fontSize: Dimensions.font28,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Container(
              width: Dimensions.width200 * 2,
              alignment: Alignment.center,
              child: SizedBox(
                  width: Dimensions.width150,
                  height: Dimensions.height40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: TextStyle(fontSize: Dimensions.font16),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      elevation: 0,
                    ),
                  )))
        ],
      ),
    );
  }
}
