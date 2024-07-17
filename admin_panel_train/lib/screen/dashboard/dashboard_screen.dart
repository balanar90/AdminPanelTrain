import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/chart.dart';
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
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          height: 500,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(defaultPadding),
                          height: 500,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Text(
                                "Storage Details",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w100),
                              ),
                              Chart(
                                  paiChartSelectionData: paiChartSelectionData),
                              Container(
                                padding: EdgeInsets.all(defaultPadding),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: primaryColor.withOpacity(1)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(defaultPadding)),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset(
                                          "icons/Documents.svg"),
                                    ),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: defaultPadding),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Documents Files",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text("1358 Files",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  ?.copyWith(
                                                      color: Colors.white70))
                                        ],
                                      ),
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          // color: primaryColor,
                        ))
                  ],
                )
              ],
            )));
  }
}
