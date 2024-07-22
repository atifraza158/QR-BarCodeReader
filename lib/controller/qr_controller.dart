import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/views/create_qr_pages/apps.dart';
import 'package:qr_code_app/views/create_qr_pages/calender.dart';
import 'package:qr_code_app/views/create_qr_pages/contact.dart';
import 'package:qr_code_app/views/create_qr_pages/dailymotion.dart';
import 'package:qr_code_app/views/create_qr_pages/email.dart';
import 'package:qr_code_app/views/create_qr_pages/facebook.dart';
import 'package:qr_code_app/views/create_qr_pages/instagram.dart';
import 'package:qr_code_app/views/create_qr_pages/location.dart';
import 'package:qr_code_app/views/create_qr_pages/twitter.dart';
import 'package:qr_code_app/views/create_qr_pages/website.dart';
import 'package:qr_code_app/views/create_qr_pages/whatsapp.dart';
import 'package:qr_code_app/views/create_qr_pages/wifi.dart';
import 'package:qr_code_app/views/create_qr_pages/youtube_detail.dart';

class QrController extends GetxController {
  List optionsData = [
    {
      'text': "Whatsapp",
      'icon': FontAwesome.whatsapp,
      'page': WhatsappDetail(),
    },
    {
      'text': "Facebook",
      'icon': FontAwesome.facebook,
      'page': FacebookDetail(),
    },
    {
      'text': "Daily Motion",
      'icon': FontAwesome5.dailymotion,
      'page': DailyMotionDetail(),
    },
    {
      'text': "instagram",
      'icon': FontAwesome5.instagram,
      'page': InstagramDetail(),
    },
    {
      'text': "YouTube",
      'icon': FontAwesome5.youtube,
      'page': YoutubeDetail(),
    },
    {
      'text': "Twitter",
      'icon': FontAwesome5.twitter,
      'page': TwitterDetail(),
    },
    {
      'text': "Email",
      'icon': FontAwesome.mail_alt,
      'page': EmailDetail(),
    },
    {
      'text': "Website",
      'icon': LineariconsFree.earth,
      'page': WebsiteDetail(),
    },
    {
      'text': "Apps",
      'icon': Icons.apps,
      'page': AppsDetail(),
    },
    {
      'text': "Wifi",
      'icon': FontAwesome5.wifi,
      'page': WifiDetail(),
    },
    {
      'text': "Location",
      'icon': Iconic.location,
      'page': LocationDetail(),
    },
    {
      'text': "Calender",
      'icon': FontAwesome5.calendar,
      'page': CalenderDetail(),
    },
    {
      'text': "Contact",
      'icon': FontAwesome.users,
      'page': ContactsDetail(),
    },
  ];
}
