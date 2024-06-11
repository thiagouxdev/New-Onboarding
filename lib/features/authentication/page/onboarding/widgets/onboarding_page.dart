import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_onboarding/features/authentication/controllers/video_controller.dart';
import 'package:video_player/video_player.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.media,
    required this.title,
    required this.subTitle,
  });

  final media, title, subTitle;

  static const double _aspectRatio = 103 / 135;

  @override
  Widget build(BuildContext context) {
    final videoController = Get.put(VideoController());

    if (media.endsWith(".mp4")) {
      videoController.initializeVideo(media);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            media.endsWith('.mp4')
                ? Obx(() {
                    if (videoController.isVideoInitialized.value) {
                      return SizedBox(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: _aspectRatio,
                          child: VideoPlayer(
                            videoController.videoPlayerController,
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: _aspectRatio,
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      );
                    }
                  })
                : Image(
                    image: AssetImage(media),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 24,
                  right: 24,
                  bottom: 24,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 31.25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                subTitle,
                style: const TextStyle(
                  color: Color(0xFF8D918C),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
