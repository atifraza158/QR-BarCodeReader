import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderController extends GetxController {
  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      selectedDate = picked;
      update();
    }
  }
}
