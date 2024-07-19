import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/chart.dart';
import 'package:admin_panel_train/screen/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
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
          StorageInfoCard(
            svgSrc: "icons/Documents.svg",
            title: "Document Files",
            amountOfFile: "1.3GB",
            numOfFiles: 142,
          ),
          StorageInfoCard(
            svgSrc: "icons/media.svg",
            title: "Media Files",
            amountOfFile: "15.3GB",
            numOfFiles: 342,
          ),
          StorageInfoCard(
            svgSrc: "icons/folder.svg",
            title: "Other Files",
            amountOfFile: "1.3GB",
            numOfFiles: 1422,
          ),
          StorageInfoCard(
            svgSrc: "icons/unknown.svg",
            title: "unknown Files",
            amountOfFile: "5GB",
            numOfFiles: 2555,
          ),
        ],
      ),
      // color: primaryColor,
    );
  }
}
