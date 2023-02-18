import 'package:bezel_chain/all_utilities.dart';

class BannerHeading extends StatelessWidget {

  Widget title;

  BannerHeading({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title,
        SizedBox(
          height: Dimensions.height10,
        ),
        SizedBox(
            width: Dimensions.width100,
            height: Dimensions.height15,
            child: const Card(
              color: Colors.black,
            )),
      ],
    );
  }
}
