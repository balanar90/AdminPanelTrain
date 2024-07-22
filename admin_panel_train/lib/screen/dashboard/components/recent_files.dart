import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

DataRow recentFileDataRow(Recentfile fileInfo) {
  return DataRow(cells: [
    DataCell(
      Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.tittle),
          )
        ],
      ),
    ),
    DataCell(Text(fileInfo.date)),
    DataCell(Text(fileInfo.size)),
  ]);
}

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: [
                DataColumn(
                  label: Text("File name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
