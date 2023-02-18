import 'package:bezel_chain/all_utilities.dart';
import 'package:bezel_chain/pages/invest/invest_banner_one.dart';

class InvestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppView(
        widget: Column(
      children: [
       InvestBannerOne(),
        MessageBanner(
          title: downloadMessage,
          color: redShade2,
          buttonText: clickHere,
          buttonColor: mainColor,
        ),
        InvestBannerTwo(),
        InvestBannerThree(),
      ],
    ));
  }
}
