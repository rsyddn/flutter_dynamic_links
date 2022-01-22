import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialoug {
  static sampleSnackbar({String? title}) {
    Get.snackbar(
      "",
      "",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blue.withOpacity(0.3),
      borderRadius: 10,
      margin: const EdgeInsets.all(15),
      colorText: Colors.black,
      duration: const Duration(seconds: 4),
      titleText: Container(),
      messageText: Text(
        "Dynamic Link URL: $title",
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      isDismissible: true,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }
}
