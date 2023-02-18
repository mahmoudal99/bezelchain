import 'package:bezel_chain/all_utilities.dart';

class InvestBannerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - Dimensions.height200,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width100 * 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: Dimensions.height200 * 2,
              child: Padding(
                padding: EdgeInsets.only(top: Dimensions.height25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Invest into the ",
                            style: GoogleFonts.montserrat(
                                fontSize: Dimensions.font30 + 2),
                            children: [
                          TextSpan(
                              text: "Future",
                              style: GoogleFonts.montserrat(
                                  color: mainColor,
                                  fontSize: Dimensions.font30,
                                  fontWeight: FontWeight.normal))
                        ])),
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    Paragraph(
                      value: investParagraph,
                      fontSize: Dimensions.font16,
                    ),
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: Dimensions.height50,
                            width: Dimensions.width200,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                bookDemo,
                                style: GoogleFonts.montserrat(
                                    fontSize: Dimensions.font12 + 2),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: mainColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                            )),
                        SizedBox(
                          width: Dimensions.width20 * 2,
                        ),
                        SubHeading(
                          value: "Learn more",
                          fontSize: Dimensions.font12 + 2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: Dimensions.height200 * 3,
                child: Image.asset(
                  assetsRoute + "watch.jpg",
                  width: Dimensions.width100 * 5,
                  height: Dimensions.height100 * 5,
                ))
          ],
        ),
      ),
    );
  }
}
