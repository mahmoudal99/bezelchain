import 'package:bezel_chain/all_utilities.dart';
import 'package:bezel_chain/pages/our_journey/our_journey_banner_one.dart';
import 'package:bezel_chain/pages/our_journey/our_journey_banner_two.dart';

class OurJourneyPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AppView(
        widget: Column(
          children: [
            OurJourneyBannerOne(),
            OurJourneyBannerTwo()
          ],
        ));
  }


}
