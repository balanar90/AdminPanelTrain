import 'package:admin_panel_train/constant.dart';
import 'package:admin_panel_train/models/MyFiles.dart';
import 'package:flutter/material.dart';
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
            SizedBox(
              height: defaultPadding,
            ),
          ],
        ),
        GridView.builder(
          itemCount: demoMyFiels.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiels[index],
          ),
        ),
      ],
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key,
    required this.info,
  });

  final CloudStorageInfo info;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * .75),
                height: 40,
                width: 40,
                // alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(.1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white54),
            ],
          ),
          Text(
            info.tittle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            width: double.infinity,
            height: 5,
            decoration: BoxDecoration(
                color: info.color.withOpacity(.1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          )
        ],
      ),
    );
  }
}
