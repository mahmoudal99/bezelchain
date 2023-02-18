import 'package:bezel_chain/all_utilities.dart';
import 'package:bezel_chain/constants/content.dart';

class BannerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assetsRoute + "phone3.jpg"), fit: BoxFit.cover)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeadingText(
                    value: bannerOneTitle,
                    textStyle: GoogleFonts.playfairDisplay(
                        color: Colors.black, fontSize: Dimensions.font55 - 5),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Paragraph(
                    value: bannerOnePrg,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  SizedBox(
                      height: Dimensions.height50,
                      width: Dimensions.width200 + Dimensions.width60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              bannerOneBtnText,
                              style: TextStyle(fontSize: Dimensions.font16),
                            ),
                            SizedBox(
                              width: Dimensions.width10 / 2,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.apple,
                                  size: Dimensions.icon30 - 2,
                                ),
                                SizedBox(
                                  width: Dimensions.width10 / 2,
                                ),
                                Icon(
                                  FontAwesomeIcons.googlePlay,
                                  size: Dimensions.icon20,
                                )
                              ],
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Dimensions.width60 / 2))),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
