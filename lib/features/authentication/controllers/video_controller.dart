import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isVideoInitialized = false.obs;

  void initializeVideo(String videoPath) {
    videoPlayerController = VideoPlayerController.asset(videoPath)
      ..initialize().then((_) {
        isVideoInitialized.value = true;
        videoPlayerController.play();
        videoPlayerController.setLooping(true);
      });
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}
