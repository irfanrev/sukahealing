import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:suka_healing/theme.dart';
import 'package:suka_healing/widgets/chat_title.dart';

class MainChat extends StatelessWidget {
  const MainChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Chat Room',
          style: GoogleFonts.poppins(),
        ),
      );
    }

    Widget emptyContent() {
      return Expanded(
          child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: Lottie.asset('assets/lottie/empty.json'),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Opps belum ada pesan',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: primaryText,
              ),
            ),
            Text(
              'Silahkan cari tempat wisata dan hubungi tour guide nya.',
              style: GoogleFonts.poppins(
                color: secondaryText,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Explore places',
                style: GoogleFonts.poppins(),
              ),
              style: ElevatedButton.styleFrom(
                primary: secondaryColor,
              ),
            ),
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: const [
              ChatTitle(),
              ChatTitle(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
