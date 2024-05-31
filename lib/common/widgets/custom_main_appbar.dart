import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import 'custom_text.dart';

AppBar customMainAppbar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.onTertiary,
    title: CustomText(
      text: title,
      size: 22,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
    ),
    leadingWidth: MediaQuery.of(context).size.width / 3,
    toolbarHeight: MediaQuery.of(context).size.width / 4.5,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(MediaQuery.of(context).size.width / 4),
      child: Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            bottom: MediaQuery.of(context).size.width * 0.05),
        child: Row(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person_outline_rounded),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.06,
                  width: MediaQuery.of(context).size.width * 0.06,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  // child: const Icon(
                  //   Icons.edit,
                  //   color: Colors.deepPurple,
                  //   size: 20,
                  // ),
                )
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            // Menggunakan FittedBox untuk membuat teks menyesuaikan ukuran layar
            const Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     CustomText(
                      text: "Selamat Datang...",
                      size: 13,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    CustomText(
                      text: "Sudah Siap Belajar Hari Ini?",
                      size: 18,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                    ),
                  ],
                ),
              ),
            ),
          ],
        
        ),
      ),
    ),
  );

  // return AppBar(
  //   backgroundColor: Theme.of(context).colorScheme.secondary,
  //   title: CustomText(
  //     text: title,
  //     size: 25,
  //     fontFamily: 'Roboto',
  //     fontWeight: FontWeight.bold,),
  //   centerTitle: true,
  //   leadingWidth: MediaQuery.of(context).size.width / 3,
  //   toolbarHeight: MediaQuery.of(context).size.width / 4,
  //   shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //             bottomRight: Radius.circular(25),
  //             bottomLeft: Radius.circular(25)),
  //       ),
  //   leading: FittedBox(
  //     child: Padding(
  //       padding: const EdgeInsets.only(bottom: 20),
  //       child: CircularPercentIndicator(
  //         radius: MediaQuery.of(context).size.width / 5,
  //         lineWidth: 15.0,
  //         animation: true,
  //         percent: 0.2,
  //         center: const FittedBox(
  //           child: CustomText(text: "7%", size: 60, fontFamily: 'Roboto',),
  //         ),
  //         circularStrokeCap: CircularStrokeCap.round,
  //         progressColor: Colors.green[300],
  //       ),
  //     ),
  //   ),
  // );
}
