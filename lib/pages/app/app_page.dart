import 'package:bezel_chain/all_utilities.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppView(
        widget: Container(
      color: Colors.white,
      width: Dimensions.screenWidth,
      height: Dimensions.screenHeight,
      child: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: Dimensions.height50),
                child: Column(
                  children: [
                    BannerHeading(
                        title: HeadingText(
                            value: "Would you like to test our App?")),
                    Padding(
                      padding: EdgeInsets.only(top: Dimensions.height15),
                      child: Paragraph(
                        value: "Available for testing on iOS & Android",
                        color: Colors.grey.shade400,
                        fontSize: Dimensions.font16,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    assetsRoute + "phones.png",
                    height: Dimensions.height100 * 5 + Dimensions.height100,
                    width: Dimensions.width100 * 5 + Dimensions.width10 * 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    height: Dimensions.height100 * 5 ,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: Dimensions.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SubHeading(
                                  value:
                                      "Get Started by filling in the form below.",
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                formField(title: "Your Name (required)"),
                                formField(title: "Your Email (required)"),
                                formField(
                                    title: "Your Message (optional)",
                                    type: TextInputType.multiline),
                              ],
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  width: Dimensions.width150,
                                  height: Dimensions.height40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Submit",
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: mainColor),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget formField(
      {required String title, TextInputType type = TextInputType.name}) {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.height15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubHeading(
            value: title,
            fontSize: Dimensions.font12 + 2,
            fontWeight: FontWeight.normal,
          ),
          TextField(
            keyboardType: type,
            cursorColor: mainColor,
            decoration: const InputDecoration(
                focusColor: mainColor,
                fillColor: mainColor,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor),
                )),
          ),
        ],
      ),
    );
  }
}
