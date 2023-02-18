import 'package:bezel_chain/all_utilities.dart';

class AssetPlayerWidget extends StatefulWidget {
  @override
  _AssetPlayerWidgetState createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
  final asset = assetsRoute + 'video.mp4';
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
    controller.setVolume(0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller.value.volume == 0;

    return Column(
      children: [
        VideoPlayerWidget(videoPlayerController: controller),
        if (controller != null && controller.value.isInitialized)
          Container(
            color: Colors.grey,
            alignment: Alignment.centerLeft,
            width: Dimensions.width200 * 3,
            height: Dimensions.height30 + (Dimensions.width20 / 5),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => controller.value.isPlaying
                        ? controller.pause()
                        : controller.play(),
                    iconSize: Dimensions.icon20 - (Dimensions.icon20 / 4),
                    icon: Icon(
                      controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: IconButton(
                    iconSize: Dimensions.icon20 - (Dimensions.icon20 / 4),
                    icon: Icon(
                      isMuted ? Icons.volume_mute : Icons.volume_up,
                      color: Colors.white,
                    ),
                    onPressed: () => controller.value.volume == 0
                        ? controller.setVolume(50)
                        : controller.setVolume(0),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
