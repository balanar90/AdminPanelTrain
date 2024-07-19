import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/my_files.dart';
import 'package:admin_panel_train/screen/dashboard/components/storage_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                Container(
                    height: 400, width: double.infinity, color: Colors.green),
                Header(),
                SizedBox(
                  height: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
                MyFiles()
              ],
            )));
  }
}
