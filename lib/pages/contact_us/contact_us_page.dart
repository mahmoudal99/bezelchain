import 'package:bezel_chain/all_utilities.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView(
        widget: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height50),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      BannerHeading(title: HeadingText(value: contactUsHeading)),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      Paragraph(
                        value:
                            contactUsSubHeading,
                        color: Colors.grey.shade400,
                        fontSize: Dimensions.font16,
                      )
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  height: Dimensions.height100 * 4.6,
                  child: Column(
                    children: [
                      infoContainer(
                        workingHours,
                        Paragraph(
                          value: workingHoursValue,
                          fontSize: Dimensions.font12 + 2,
                        ),
                        Colors.grey.shade300,
                      ),
                      infoContainer(
                          addressHeading,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Paragraph(
                                value: address,
                                fontSize: Dimensions.font12 + 2,
                              ),
                              SizedBox(height: 5,),
                              Paragraph(
                                value: phone,
                                fontSize: Dimensions.font12 + 2,
                              ),
                              SizedBox(height: 5,),
                              Paragraph(
                                value: email,
                                fontSize: Dimensions.font12 + 2,
                              ),
                            ],
                          ),
                          Colors.grey.shade200),
                      infoContainer(
                          socialMediaHeading,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.black,
                                size: Dimensions.icon20 + 2,
                              ),
                              SizedBox(
                                width: Dimensions.width15,
                              ),
                              Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.black,
                                size: Dimensions.icon20,
                              ),
                              SizedBox(
                                width: Dimensions.width15,
                              ),
                              Icon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.black,
                                size: Dimensions.icon20,
                              ),
                            ],
                          ),
                          Colors.grey.shade100),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    height: Dimensions.height100 * 5,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                formField(title: "Your Name (required)"),
                                formField(title: "Your Email (required)"),
                                formField(
                                    title: "Your Message",
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
                  ),
                ),
              ],
            ),
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

  Widget infoContainer(String title, Widget content, Color color) {
    return Container(
      width: Dimensions.screenWidth! / 4,
      height: Dimensions.height100 * 4.6 / 3,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeading(
              value: title,
              fontSize: Dimensions.font16,
            ),
            SizedBox(
                width: Dimensions.width60,
                height: Dimensions.height10,
                child: const Card(
                  color: Colors.orange,
                )),
            SizedBox(
              height: 10,
            ),
            content
          ],
        ),
      ),
    );
  }
}
