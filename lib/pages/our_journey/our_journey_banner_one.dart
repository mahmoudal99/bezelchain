import 'package:bezel_chain/all_utilities.dart';

class OurJourneyBannerOne extends StatelessWidget {
  List<String> dates = [
    "Jan 2019",
    "Nov 2019",
    "Mar 2020",
    "Dec 2020",
    "Jan 2021",
    "Feb 2021"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: Dimensions.height75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      value: "Where are we today?",
                      textStyle: GoogleFonts.playfairDisplay(
                          color: Colors.black, fontSize: Dimensions.font55 - 5),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Paragraph(
                      value:
                          "We are now ready to take Bezelchain to the masses\nand inspire the industry with this offering.",
                      alignCenter: false,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                Image.asset(
                  assetsRoute + "globe.jpg",
                  height: Dimensions.height100 * 5,
                  width: Dimensions.width100 * 5,
                )
              ],
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: Dimensions.width150 * 10,
                  height: Dimensions.height200 * 2,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          timelineHeaderItem('title'),
                          timelineHeaderItem('title'),
                          timelineHeaderItem('title'),
                          timelineHeaderItem('title'),
                          timelineHeaderItem('title'),
                          timelineHeaderItem('title'),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: Dimensions.width150 * 10,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: dates
                            .map((date) => timelineDateItem(date))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget timelineHeaderItem(String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height25),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: Dimensions.width200,
          height: Dimensions.height75,
          child: Card(
            elevation: 10,
            child: Center(
                child: Paragraph(
              value: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              fontSize: Dimensions.font12,
              alignCenter: true,
            )),
          ),
        ),
      ),
    );
  }

  Widget dot() {
    return Padding(
      padding: EdgeInsets.only(
          left: Dimensions.width20, bottom: Dimensions.height10 + 5),
      child: Align(
        alignment: Alignment.center,
        child: Container(
            width: Dimensions.width200,
            height: Dimensions.height75,
            child: Center(
                child: SubHeading(
              value: ".",
              fontSize: Dimensions.font30,
              color: mainColor,
            ))),
      ),
    );
  }

  Widget timelineDateItem(String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: Dimensions.width20, top: Dimensions.height50),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: Dimensions.width200,
          height: Dimensions.height75,
          child: Center(
              child: Paragraph(
            value: title,
            fontSize: Dimensions.font16,
          )),
        ),
      ),
    );
  }
}
