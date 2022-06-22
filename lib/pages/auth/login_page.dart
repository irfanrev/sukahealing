import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: primaryText,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Silahkan Sing In menggunakan email',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: secondaryText,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      );
    }

    Widget emailTitle() {
      return Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.email,
                    size: 20,
                    color: Color(0xff6C5ECF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan email',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget passTitle() {
      return Container(
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.security_rounded,
                    size: 20,
                    color: Color(0xff6C5ECF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget btnSignIn() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
            ),
            onPressed: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Sign In',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
      );
    }

    Widget textButton() {
      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum mempunyai akun?',
            style: GoogleFonts.poppins(
              color: primaryText,
            ),
          ),
          TextButton(
              onPressed: () => Navigator.pushNamed(context, '/register'),
              child: Text(
                'Register',
                style: GoogleFonts.poppins(
                  color: secondaryColor,
                ),
              ))
        ],
      ));
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          header(),
          emailTitle(),
          passTitle(),
          btnSignIn(),
          textButton(),
        ],
      ),
    );
  }
}
