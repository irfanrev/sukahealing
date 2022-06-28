import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:suka_healing/theme.dart';
import 'package:suka_healing/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: const Text('My Wishlist'),
      );
    }

    Widget emptyWistlist() {
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
              'Opps belum ada wishlist',
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

    Widget contentWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: const [
              WishlistCard(),
              WishlistCard(),
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
          //emptyWistlist(),
          contentWishlist(),
        ],
      ),
    );
  }
}
