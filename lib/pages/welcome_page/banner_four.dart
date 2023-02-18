import 'package:bezel_chain/all_utilities.dart';

class BannerFour extends StatefulWidget {
  @override
  _BannerFourState createState() => _BannerFourState();
}

class _BannerFourState extends State<BannerFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height -
          (Dimensions.height100 + Dimensions.height50),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BannerHeading(
            title: HeadingText(
              value: bannerFourTitle,
            ),
          ),
          SizedBox(
            height: Dimensions.height50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    infoItem(bannerFourInfoTitle1),
                    infoItem(bannerFourInfoTitle2),
                    infoItem(bannerFourInfoTitle3),
                    infoItem(bannerFourInfoTitle4)
                  ],
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                AssetPlayerWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget infoItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20 * 2),
      child: SizedBox(
          width: Dimensions.width120 + Dimensions.width20,
          child: Column(
            children: [
              SubHeading(
                value: title,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Paragraph(
                value:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.",
                alignCenter: true,
                fontSize: Dimensions.font12,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Text(
                "Learn more >",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: Dimensions.font12, color: Colors.blue),
              ),
            ],
          )),
    );
  }
}
