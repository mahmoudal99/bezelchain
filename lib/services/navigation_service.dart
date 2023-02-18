import '../all_utilities.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName) =>
      navigatorKey.currentState!.pushNamed(routeName);

  Future<dynamic> replacedAndNavigateTo(String routeName) =>
      navigatorKey.currentState!.pushReplacementNamed(routeName);

  void goBack() => navigatorKey.currentState!.pop();
}
