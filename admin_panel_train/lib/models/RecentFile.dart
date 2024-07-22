import 'package:flutter/material.dart';

class Recentfile {
  final String icon, tittle, date, size;
  Recentfile(
      {required this.icon,
      required this.tittle,
      required this.date,
      required this.size});
}

List demoRecentFiles = [
  Recentfile(
      icon: "/icons/xd_file.svg",
      tittle: "XD File",
      date: "01-03-2021",
      size: "3.5mb"),
  Recentfile(
      icon: "/icons/Figma_file.svg",
      tittle: "Figma File",
      date: "27-02-2021",
      size: "19.0mb"),
  Recentfile(
      icon: "/icons/doc_file.svg",
      tittle: "Documents",
      date: "23-02-2021",
      size: "32.5mb"),
  Recentfile(
      icon: "/icons/sound_file.svg",
      tittle: "Sound File",
      date: "21-02-2021",
      size: "3.5mb"),
  Recentfile(
      icon: "/icons/media_file.svg",
      tittle: "Media File",
      date: "23-02-2021",
      size: "2.5gb"),
  Recentfile(
      icon: "/icons/pdf_file.svg",
      tittle: "Sals PDF",
      date: "25-02-2021",
      size: "3.5gb"),
  Recentfile(
      icon: "/icons/excle_file.svg",
      tittle: "Excel PDF",
      date: "25-02-2021",
      size: "34.5mb"),
];
