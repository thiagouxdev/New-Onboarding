import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunctions {
  // Retorna o tamanho da tela atual como um objeto Size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  // Retorna a altura da tela atual
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Retorna a largura da tela atual
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
}
