
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    this.titleText,
    this.subtitle,
    required this.color,
    required this.image,
    required this.buttonText,
    required this.onButtonTap,
    required this.teks,
    required this.icon,
  }) : super(key: key);

  final Color color;
  final Image image;
  final String teks;
  final String buttonText;
  final void Function() onButtonTap;
  final String? titleText;
  final Widget? subtitle;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GFCard(
      color: Theme.of(context).colorScheme.secondary,
      borderOnForeground: true, // Menyesuaikan border dengan content
      elevation: 5, // Elevasi kartu untuk memberikan efek bayangan
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0), // Margin dari kartu
      padding: EdgeInsets.all(10), // Padding dari konten di dalam kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Bentuk border kartu
      ),
      image: image,
      showImage: true,
      title: GFListTile(
        titleText: titleText ,
        subTitle: subtitle,
      ),
      content: SizedBox(
        width: screenWidth * 0.8, // Lebar konten
        child: Text(
          teks,
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Roboto'),
        ),
      ),
      buttonBar: GFButtonBar(
        children: <Widget>[
          GFButton(
            onPressed: onButtonTap,
            text: buttonText,
            color: color,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
