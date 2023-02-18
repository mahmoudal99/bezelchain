import 'package:bezel_chain/all_utilities.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return AppView(
      widget: Column(
        children: [
          BannerOne(),
          BannerTwo(),
          MessageBanner(color: mainColor, title: "Would you like to test our app?", buttonText: "Start Now",),
          BannerThree(),
          BannerFour(),
        ],
      ),
    );
  }
}
