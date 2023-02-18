import 'package:bezel_chain/all_utilities.dart';

class InvestBannerThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width100 * 3),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - Dimensions.height100,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height100),
              child: BannerHeading(
                  title: RichText(
                      text: TextSpan(
                          text: "We are a ",
                          style: GoogleFonts.montserrat(
                              fontSize: Dimensions.font30),
                          children: [
                            TextSpan(
                                text: "SEIS",
                                style: GoogleFonts.montserrat(
                                    color: mainColor,
                                    fontSize: Dimensions.font30,
                                    fontWeight: FontWeight.normal)),
                            TextSpan(
                                text: " approved company",
                                style: GoogleFonts.montserrat(
                                    fontSize: Dimensions.font30,
                                    fontWeight: FontWeight.normal)),
                          ])),),
            ),
            SizedBox(
              height: Dimensions.height25,
            ),
            Paragraph(value: "What does this mean for your company?"),
            SizedBox(
              height: Dimensions.height50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                feature("1", "Loss Relief"),
                feature("2", "CGT Deferral Relief"),
                feature("3", "CGT Exemption"),
                feature("4", "Income Tax Relief"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget feature(String number, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(number + ". ", style: GoogleFonts.montserrat(fontSize: Dimensions.font18, fontWeight: FontWeight.bold, color: mainColor)),
        SubHeading(value: title, fontSize: Dimensions.font22, fontWeight: FontWeight.normal,),
      ],
    );
  }
}
