import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/screen/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Files",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  ElevatedButton.icon(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 1.5,
                            vertical: defaultPadding)),
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Add New"),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, crossAxisSpacing: defaultPadding),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(color: secondaryColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              flex: 2,
              child: StorageDetails(),
            ),
          ],
        ),
      ],
    );
  }
}
