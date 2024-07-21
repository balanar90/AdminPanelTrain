import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/chart.dart';
import 'package:admin_panel_train/screen/dashboard/components/myfiles.dart';
import 'package:admin_panel_train/screen/dashboard/components/storage_details.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:pie_chart/pie_chart.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                // Container(
                //     height: 400, width: double.infinity, color: Colors.green),
                Header(),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5, child: MyFiles(),
                      // Container(
                      //   height: 500,
                      //   color: Colors.white,
                      // ),
                    ),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Expanded(flex: 2, child: StorageDetail())
                  ],
                )
              ],
            )));
  }
}



/*
class StorageDetail extends StatelessWidget {
  const StorageDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      // height: 500,
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
          ),
          Chart(paiChartSelectionData: paiChartSelectionData),
          StorageInfoDetail(
            svgSrc: "icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "4.3GB",
            numOfFIles: 1455,
          ),
          StorageInfoDetail(
            svgSrc: "icons/media.svg",
            title: "Media Files",
            amountOfFiles: "2.3GB",
            numOfFIles: 455,
          ),
          StorageInfoDetail(
            svgSrc: "icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "5GB",
            numOfFIles: 9578,
          ),
          StorageInfoDetail(
            svgSrc: "icons/unknown.svg",
            title: "Other Files",
            amountOfFiles: "1.9GB",
            numOfFIles: 9855,
          ),
        ],
      ),
      // color: primaryColor,
    );
  }
}

class StorageInfoDetail extends StatelessWidget {
  const StorageInfoDetail({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFIles,
  });

  final String title, svgSrc, amountOfFiles;
  final int numOfFIles;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(.15)),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$numOfFIles Files",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(amountOfFiles,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: Colors.white70))
                ],
              ),
            ),
          ),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}
*/