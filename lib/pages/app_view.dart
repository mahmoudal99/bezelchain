import 'package:bezel_chain/all_utilities.dart';

class AppView extends StatefulWidget {
  Widget widget;

  AppView({Key? key, required this.widget}) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _opacity = _scrollPosition < MediaQuery.of(context).size.height * 0.40
        ? _scrollPosition / (MediaQuery.of(context).size.height * 0.40)
        : 1;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(1920, MediaQuery.of(context).size.height),
        child: TopBarContent(
          opacity: _opacity,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: Dimensions.screenWidth,
        height: Dimensions.screenHeight,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              widget.widget,
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
