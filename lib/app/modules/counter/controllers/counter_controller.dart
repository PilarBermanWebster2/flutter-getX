import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        'Warning',
        'ges euy cape',
        backgroundColor: Colors.black87,
        colorText: Colors.white,
        icon: const Icon(
          Icons.warning_amber_rounded,
          color: Colors.white,
        ),
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
        boxShadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      );
    } else {
      bilangan.value++; // Increment the value by 1
    }
  }

  void kurangiSatu() {
    if (bilangan.value > 0) {
      bilangan.value--; // Decrement the value by 1
    } else {
      Get.snackbar(
        'Warning',
        'Bilangan tidak bisa kurang dari 0',
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
        boxShadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      );
    }
  }

  void resetToZero() {
    bilangan.value = 0; // Reset the value to 0
    Get.snackbar(
      'Reset',
      'Bilangan telah direset ke 0',
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: const Icon(
        Icons.refresh,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }
}
