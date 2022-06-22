import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget avatarProfile() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.person_rounded,
                size: 50,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Irfan Maulana',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: primaryText,
              ),
            ),
            Text(
              'irfanklb30@gmail.com',
              style: GoogleFonts.poppins(
                color: secondaryText,
              ),
            ),
          ],
        ),
      );
    }

    Widget editItems(String title) {
      return Container(
        margin: EdgeInsets.only(top: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                color: secondaryText,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 20,
            )
          ],
        ),
      );
    }

    Widget profiling() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit Profile',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: primaryText,
              ),
            ),
            editItems('Name'),
            editItems('Username'),
            editItems('Add No. Tlp'),
            editItems('Email'),
            editItems('Reset Password'),
          ],
        ),
      );
    }

    Widget btnLogout() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    color: secondaryText,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          avatarProfile(),
          profiling(),
          btnLogout(),
        ],
      ),
    );
  }
}
