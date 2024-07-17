import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant.dart';

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
