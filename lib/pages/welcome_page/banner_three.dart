import 'package:bezel_chain/all_utilities.dart';

class BannerThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 120,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(assetsRoute + "graphic2.jpg"), fit: BoxFit.cover)),
      child: Padding(
        padding: EdgeInsets.only(top: Dimensions.height50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BannerHeading(
              title: HeadingText(
                value: bannerThreeTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
