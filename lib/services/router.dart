import '../all_utilities.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case welcomePageRoute:
      return _getPageRoute(const WelcomePage(), settings);
    case ourJourneyPageRoute:
      return _getPageRoute(OurJourneyPage(), settings);
    case aboutUsPageRoute:
      return _getPageRoute(AboutUsPage(), settings);
    case contactUsPageRoute:
      return _getPageRoute(ContactUsPage(), settings);
    case investPageRoute:
      return _getPageRoute(InvestPage(), settings);
    case appPageRoute:
      return _getPageRoute(AppPage(), settings);

    default:
      return _getPageRoute(const WelcomePage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              child,
        );
}
