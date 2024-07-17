import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/chart.dart';
import 'package:admin_panel_train/screen/dashboard/components/storage_info_detail.dart';
import 'package:flutter/material.dart';

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
