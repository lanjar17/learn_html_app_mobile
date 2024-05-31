
import 'package:flutter/material.dart';
import 'package:learnhtml/common/widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, 
    required this.text,
    required this.subtitle, 
    required this.leading,
    required this.onTap,
    required this.color,
    required this.trailing,
  });
  
  final String text;
  final void Function() onTap;
  final Widget leading;
  final Widget trailing;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // final double fontSizeTitle = MediaQuery.of(context).size.width * 0.065;
    // final double fontSizeSubtitle = MediaQuery.of(context).size.width * 0.04;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      // margin: const EdgeInsets.only(left: 21, right: 21),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      color: Theme.of(context).colorScheme.secondary,
      child: ListTile(
        title: CustomText(
          text: text,
          size: screenWidth * 0.06,
          align: TextAlign.left,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',
        ),
        subtitle: CustomText(
          text: subtitle,
          size: screenWidth * 0.04,
          align: TextAlign.left,
          fontFamily: 'Roboto',
          color: Colors.grey,
        ),
        leading: FittedBox(
          fit: BoxFit.contain,
          child: leading,
        ),
        trailing: FittedBox(
          fit: BoxFit.contain,
          child: trailing,
        ),
        iconColor: color,
        onTap: onTap,
      ),
    );
  }
}
