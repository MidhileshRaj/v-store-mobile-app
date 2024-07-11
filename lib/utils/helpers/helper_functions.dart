import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VStoreAppHelperFunctions extends GetxController{
  static Color? getColor(String value) {
    /// Define your product specific colors here and it will  match the attribute colors and show specific

    if (value == 'Green' || value == 'green') {
      return Colors.green;
    } else if (value == 'Red' || value == 'red') {
      return Colors.red;
    } else if (value == 'Pink' || value == 'pink') {
      return Colors.pink;
    } else if (value == 'Blue' || value == 'blue') {
      return Colors.blue;
    } else if (value == 'Grey' || value == 'grey') {
      return Colors.grey;
    } else if (value == 'Purple' || value == 'purple') {
      return Colors.purple;
    } else if (value == 'White' || value == 'white') {
      return Colors.white;
    } else if (value == 'Black' || value == 'black') {
      return Colors.black;
    } else {
      return null;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlert({required String message, required String title}) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"))
          ],
        );
      },
    );
  }


  static bool isDarkMode(BuildContext context){
    return  MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
}
