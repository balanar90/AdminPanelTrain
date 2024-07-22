import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/models/MyFiles.dart';
import 'package:admin_panel_train/screen/dashboard/components/file_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text(
              "My Files",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding)),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("ADD TIME"),
            ),
            // SizedBox(
            //   height: defaultPadding,
            // ),
          ],
        ),
        GridView.builder(
          itemCount: demoMyFiels.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding,childAspectRatio: 1.5),
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiels[index],
          ),
        ),
      ],
    );
  }
}
