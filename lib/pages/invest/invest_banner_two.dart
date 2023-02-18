import 'package:bezel_chain/all_utilities.dart';
import 'package:bezel_chain/constants/dimensions.dart';

class InvestBannerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width100 * 3),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height + Dimensions.height100*5,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height50),
              child: BannerHeading(
                  title: HeadingText(value: investBannerTwoTitle)),
            ),
            SizedBox(
              height: Dimensions.height25,
            ),
            Paragraph(
              value: investBannerTwoValue,
              alignCenter: true,
            ),
            SizedBox(
              height: Dimensions.height50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                infoItem("\$\3 Million", FontAwesomeIcons.dollarSign),
                infoItem("Private Investors", Icons.person),
                infoItem("Crowd Funding", Icons.reduce_capacity_sharp)
              ],
            ),
            SizedBox(
              height: Dimensions.height100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    infoContainer(
                      "Evaluation",
                      Paragraph(
                        value: evaluationText,
                        fontSize: Dimensions.font16,
                      ),
                      Colors.grey.shade200,
                    ),
                    SizedBox(
                      width: Dimensions.width200 + Dimensions.width180,
                      height: Dimensions.height100 * 3,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        child: Image.asset(
                          assetsRoute + "valuation.jpg",
                          height: Dimensions.height200 * 2,
                          width: Dimensions.width200 * 2,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.height75,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: Dimensions.width200 * 2 + Dimensions.width20,
                        height: Dimensions.height100 * 3,
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          child: Image.asset(
                            assetsRoute + "blockchain.jpg",
                            height:
                                Dimensions.height200 * 2 + Dimensions.height20,
                            width: Dimensions.width200 * 2 + Dimensions.width20,
                          ),
                        )),
                    infoContainer(
                      "Blockchain",
                      Paragraph(
                        value: blockchainText,
                        fontSize: Dimensions.font16,
                      ),
                      Colors.grey.shade300,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height100,
            ),
            SizedBox(
                width: Dimensions.width200*5,
                height: Dimensions.height100*3,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Dimensions.height20),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: SubHeading(
                              value: businessModel,
                              fontSize: Dimensions.font22,
                            )),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: businessModelList
                              .map((title) => modelItem(title))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ))
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeading(
              value: title,
              fontSize: Dimensions.font20,
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

  Widget infoItem(String title, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20 * 2),
      child: SizedBox(
          width: Dimensions.width120 + Dimensions.width60,
          child: Column(
            children: [
              Icon(icon),
              // Image.asset(
              //   assetsRoute + image,
              //   height: 100,
              //   width: 100,
              // ),
              SizedBox(
                height: Dimensions.height10,
              ),
              SubHeading(
                value: title,
              ),
            ],
          )),
    );
  }

  Widget modelItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20 * 2),
      child: SizedBox(
          width: Dimensions.width120 + Dimensions.width20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Paragraph(
                value: title,
                alignCenter: true,
                fontSize: Dimensions.font16,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Paragraph(
                value:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua.",
                alignCenter: true,
                fontSize: Dimensions.font12,
                color: Colors.grey.shade500,
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
            ],
          )),
    );
  }
}
