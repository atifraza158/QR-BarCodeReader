import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';
import 'package:qr_code_app/views/utils/date_time_field/date_time_field.dart';

import '../utils/app_button/app_button.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/big_text_field/big_text_field.dart';

class CalenderDetail extends StatefulWidget {
  CalenderDetail({super.key});

  @override
  State<CalenderDetail> createState() => _CalenderDetailState();
}

class _CalenderDetailState extends State<CalenderDetail> {
  final eventTitleController = TextEditingController();
  final longController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  final eventLocationController = TextEditingController();
  final eventDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Calender",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigTextField(
                  controller: eventTitleController,
                  hintText: "Event Title",
                ),
                SizedBox(height: 20),
                AppText(
                  title: "Start...",
                ),
                DateTimeField(
                  dateController: startDateController,
                  hintText: "Start Date",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: AppColors.bg_grey,
                    ),
                    onPressed: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2025),
                      );
                      if (picked != null) {
                        setState(
                          () {
                            startDateController.text =
                                DateFormat('yyyy-MM-dd').format(picked);
                          },
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                DateTimeField(
                  dateController: startTimeController,
                  hintText: "Start Time",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.timer,
                      size: 18,
                      color: AppColors.bg_grey,
                    ),
                    onPressed: () async {
                      final TimeOfDay? picked = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (picked != null) {
                        setState(() {
                          startTimeController.text =
                              '${picked.hour}:${picked.minute}';
                        });
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                AppText(
                  title: "End...",
                ),
                DateTimeField(
                  dateController: endDateController,
                  hintText: "End Date",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: AppColors.bg_grey,
                    ),
                    onPressed: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2025),
                      );
                      if (picked != null) {
                        setState(
                          () {
                            startDateController.text =
                                DateFormat('yyyy-MM-dd').format(picked);
                          },
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                DateTimeField(
                  dateController: endTimeController,
                  hintText: "End Time",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.timer,
                      size: 18,
                      color: AppColors.bg_grey,
                    ),
                    onPressed: () async {
                      final TimeOfDay? picked = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (picked != null) {
                        setState(() {
                          startTimeController.text =
                              '${picked.hour}:${picked.minute}';
                        });
                      }
                    },
                  ),
                ),
                SizedBox(height: 20),
                AppText(
                  title: 'Others...',
                ),
                BigTextField(
                  controller: eventLocationController,
                  hintText: "Event Location",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: eventDescriptionController,
                  hintText: "Event Description",
                  maxLines: 4,
                ),
                SizedBox(height: 30),
                AppButton(
                  buttonName: "Generate QR",
                  onTap: () {},
                  textSize: 13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
