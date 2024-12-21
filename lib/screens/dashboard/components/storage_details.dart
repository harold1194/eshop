import 'package:eshop/screens/dashboard/components/chart.dart';
import 'package:eshop/screens/dashboard/components/strorage_info_card.dart';
import 'package:eshop/utils/constant.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StrorageInfoCard(
            title: "Documents File",
            svgSrc: "assets/icons/Documents.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StrorageInfoCard(
            title: "Media File",
            svgSrc: "assets/icons/media.svg",
            amountOfFiles: "15.3GB",
            numOfFiles: 1628,
          ),
          StrorageInfoCard(
            title: "Other Folder",
            svgSrc: "assets/icons/folder.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 128,
          ),
          StrorageInfoCard(
            title: "Unknown",
            svgSrc: "assets/icons/unknown.svg",
            amountOfFiles: "1.3GB",
            numOfFiles: 200,
          ),
        ],
      ),
    );
  }
}
