import 'package:bezel_chain/all_utilities.dart';

class OurJourneyBannerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width200 * 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                infoContainer(
                    "2021 - Development Begins",
                    Paragraph(
                      value: developmentText,
                      fontSize: Dimensions.font16,
                    ),
                    Colors.grey.shade200),
                Container(
                    width: Dimensions.screenWidth! / 4,
                    child: Image.asset(
                      assetsRoute + "phone.png",
                      height: Dimensions.height200 * 2 + Dimensions.height50,
                      width: Dimensions.width200 + Dimensions.width10 * 5,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget infoContainer(String title, Widget content, Color color) {
    return Container(
      width: Dimensions.screenWidth! / 4,
      height: Dimensions.height100 * 5 / 2,
      color: color,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: Dimensions.height20, horizontal: Dimensions.width20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeading(
              value: title,
              fontSize: Dimensions.font18,
            ),
            SizedBox(
              height: Dimensions.height25,
            ),
            content
          ],
        ),
      ),
    );
  }
}
