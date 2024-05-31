import 'package:flutter/material.dart';
import 'package:learnhtml/common/widgets/custom_list_tile.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      // shrinkWrap: true,
      // padding: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01, vertical: 20.0),
      children: [
        CustomListTile(
          text: "PROJECT 1",
          subtitle: "Andi adalah seorang pemilik restoran...",
          leading: const Icon(Icons.looks_one_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          color: Colors.blue,
          onTap: () => Navigator.pushNamed(context, "/Project1Page"),
        ),
        SizedBox(height: screenWidth * 0.03),
        CustomListTile(
            text: "PROJECT 2",
            subtitle: "Universitas X akan mengadakan workshop...",
            leading: const Icon(Icons.looks_two_rounded),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.orange,
            onTap: () => Navigator.pushNamed(context, "/Project2Page")),
        SizedBox(height: screenWidth * 0.03),
        CustomListTile(
          text: "PROJECT 3",
          subtitle: "Dalam rangka meningkatkan layanan pelanggan...",
          leading: const Icon(Icons.looks_3_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          color: Colors.green,
          onTap: () => Navigator.pushNamed(context, "/Project3Page"),
        ),
      ],
    );
  }
}
