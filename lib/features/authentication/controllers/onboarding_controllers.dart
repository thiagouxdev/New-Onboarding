import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Atualizar o índice atual ao rolar a página
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Atualizar índice atual e ir para a página da rede
  void nextPage() {
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }
}
