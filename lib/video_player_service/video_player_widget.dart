import 'package:bezel_chain/all_utilities.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerController videoPlayerController;

  VideoPlayerWidget({Key? key, required this.videoPlayerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return videoPlayerController != null &&
            videoPlayerController.value.isInitialized
        ? buildVideo()
        : Container(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
  }

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(controller: videoPlayerController,)),
        ],
      );

  Widget buildVideoPlayer() => Container(width: Dimensions.width200 * 3, height: Dimensions.height200 * 2,child: Card(child: VideoPlayer(videoPlayerController)));
}
