import 'package:bezel_chain/all_utilities.dart';

class BannerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: Dimensions.height50),
        child: Column(
          children: [
            BannerHeading(
                title: RichText(
                    text: TextSpan(
                        text: bannerTwoTitle,
                        style: GoogleFonts.montserrat(
                            fontSize: Dimensions.font30 + 2),
                        children: [
                  TextSpan(
                      text: name,
                      style: GoogleFonts.montserrat(
                          color: mainColor,
                          fontSize: Dimensions.font30,
                          fontWeight: FontWeight.bold))
                ]))),
            Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height100 - Dimensions.height20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      feature(bannerTwoFeat1Title, bannerTwoFeat1Sub,
                          FontAwesomeIcons.shield),
                      feature(bannerTwoFeat2Title, bannerTwoFeat2Sub,
                          FontAwesomeIcons.lock),
                      feature(bannerTwoFeat3Title, bannerTwoFeat3Sub,
                          FontAwesomeIcons.earthEurope),
                      feature(bannerTwoFeat4Title, bannerTwoFeat4Sub,
                          FontAwesomeIcons.mobile),
                    ],
                  ),
                  SizedBox(
                    width: Dimensions.width100,
                  ),
                  Image.asset(
                    assetsRoute + "watch_to_phone.jpg",
                    height: Dimensions.height200 * 3 + Dimensions.height20,
                    width: Dimensions.width200 * 3 + Dimensions.width20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget feature(String title, String content, IconData icon) {
    return Container(
      height: Dimensions.height100 + Dimensions.height20,
      child: Padding(
        padding: EdgeInsets.only(top: Dimensions.height20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                icon,
                color: mainColor,
                size: Dimensions.icon25,
              ),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shape: CircleBorder(),
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width20,
                    vertical: Dimensions.height20),
                primary: Colors.white,
                // <-- Button color
                onPrimary: Colors.white, // <-- Splash color
              ),
            ),
            SizedBox(
              width: Dimensions.width20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubHeading(
                  value: title,
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Paragraph(
                  value: content,
                  fontSize: Dimensions.font12 + 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
