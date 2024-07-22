import 'package:admin_panel_train/constant.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, tittle, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo({
    required this.tittle,
    required this.numOfFiels,
    required this.svgSrc,
    required this.totalStorage,
    required this.color,
    required this.percentage,
  });
}

List demoMyFiels = [
  CloudStorageInfo(
      tittle: "Documents",
      numOfFiels: 1328,
      svgSrc: "/icons/Documents.svg",
      totalStorage: "2.9GB",
      color: primaryColor,
      percentage: 55),
  CloudStorageInfo(
      tittle: "Google Drive",
      numOfFiels: 1328,
      svgSrc: "/icons/google_drive.svg",
      totalStorage: "2.9GB",
      color: Color(0xffffa113),
      percentage: 11),
  CloudStorageInfo(
      tittle: "One Drive",
      numOfFiels: 1328,
      svgSrc: "/icons/one_drive.svg",
      totalStorage: "1GB",
      color: Color(0xffa4cdff),
      percentage: 35),
  CloudStorageInfo(
      tittle: "Documents",
      numOfFiels: 5328,
      svgSrc: "/icons/drop_box.svg",
      totalStorage: "7.3GB",
      color: Color(0xff007ee5),
      percentage: 78),
];
