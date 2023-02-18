import 'package:bezel_chain/all_utilities.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: MediaQuery.of(context).size.width,
      height: Dimensions.height200 * 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: Dimensions.height50),
            child: Container(
              width: Dimensions.width200 * 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      columnTitle(footerColTitle1),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: companyColValues
                            .map((value) => textWidget(value))
                            .toList(),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      columnTitle(footerColTitle2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: partnersColValues
                            .map((value) => textWidget(value))
                            .toList(),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      columnTitle(footerColTitle3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: connectColValues
                            .map((value) => textWidget(value))
                            .toList(),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      columnTitle(footerColTitle4),
                      textWidget(footerColSubTitle4),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 0.5,
            width: Dimensions.width200 * 5,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
            child: const Text(
              footerBottomText,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget columnTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height15),
      child: Text(
        title,
        style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.font18),
      ),
    );
  }

  Widget textWidget(String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
      child: Text(
        value,
        style: GoogleFonts.montserrat(
            color: Colors.grey.shade300,
            fontWeight: FontWeight.normal,
            fontSize: Dimensions.font12 + 1),
      ),
    );
  }
}
