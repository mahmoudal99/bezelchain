import '../all_utilities.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;

  const TopBarContent({Key? key, required this.opacity}) : super(key: key);

  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final navigator = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize:
          Size(MediaQuery.of(context).size.width, Dimensions.height200 * 5),
      child: Container(
        color: mainColor.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width180, vertical: Dimensions.height10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                assetsRoute + "logo.png",
                scale: 5,
              ),
              Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: Dimensions.width20),
                      menuItem("Home", welcomePageRoute),
                      menuItem("Our Journey", ourJourneyPageRoute),
                      menuItem("About Us", aboutUsPageRoute),
                      menuItem("Invest", investPageRoute),
                      menuItem("Contact Us", contactUsPageRoute),
                      menuItem("App", appPageRoute),
                      menuItem("Blog", appPageRoute),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: widget.opacity < 0.2
                            ? Colors.grey.shade300
                            : Colors.white,
                        size: Dimensions.icon20 + 2,
                      ),
                      SizedBox(
                        width: Dimensions.width15,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: widget.opacity < 0.2
                            ? Colors.grey.shade300
                            : Colors.white,
                        size: Dimensions.icon20,
                      ),
                      SizedBox(
                        width: Dimensions.width15,
                      ),
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: widget.opacity < 0.2
                            ? Colors.grey.shade300
                            : Colors.white,
                        size: Dimensions.icon20,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String title, String route) {
    return Row(
      children: [
        InkWell(
          onTap: () => navigator.navigateTo(route),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                color: widget.opacity < 0.2 ? Colors.black : Colors.white),
          ),
        ),
        SizedBox(width: Dimensions.width10 * 5),
      ],
    );
  }
}
