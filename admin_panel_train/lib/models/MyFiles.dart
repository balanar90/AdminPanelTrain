import 'package:admin_panel_train/constant.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, tittle, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo({required this.svgSrc, required this.color, required this.numOfFiels, required this.percentage,
      required this.tittle, required this.totalStorage});
}

List demoMyFiels = [
  ]