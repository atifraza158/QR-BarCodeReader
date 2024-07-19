import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:get/get.dart';

class QrController extends GetxController {
  List optionsData = [
    {
      'text': "Whatsapp",
      'icon': FontAwesome.whatsapp,
    },
    {
      'text': "Facebook",
      'icon': FontAwesome.facebook,
    },
    {
      'text': "Daily Motion",
      'icon': FontAwesome5.dailymotion,
    },
    {
      'text': "instagram",
      'icon': FontAwesome5.instagram,
    },
    {
      'text': "YouTube",
      'icon': FontAwesome5.youtube,
    },
    {
      'text': "Twitter",
      'icon': FontAwesome5.twitter,
    },
    {
      'text': "Email",
      'icon': FontAwesome.mail_alt,
    },
    {
      'text': "Website",
      'icon': LineariconsFree.earth,
    },
    {
      'text': "Apps",
      'icon': Icons.apps,
    },
    {
      'text': "Wifi",
      'icon': FontAwesome5.wifi,
    },
    {
      'text': "Location",
      'icon': Iconic.location,
    },
     {
      'text': "Calender",
      'icon': FontAwesome5.calendar,
    },
  ];
}
