import 'package:flutter/material.dart';
import 'package:suka_healing/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Irfan',
                    style: GoogleFonts.poppins(
                      color: primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'irfan.resimen2018@gmail.com',
                    style: GoogleFonts.poppins(
                      color: secondaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget categoryList() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'All Place',
                    style: GoogleFonts.poppins(
                      color: primaryText,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: secondaryText,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Pantai',
                    style: GoogleFonts.poppins(
                      color: secondaryText,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: secondaryText,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Air Terjun',
                    style: GoogleFonts.poppins(
                      color: secondaryText,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: secondaryText,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Bukit',
                    style: GoogleFonts.poppins(
                      color: secondaryText,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                margin: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: secondaryText,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Danau',
                    style: GoogleFonts.poppins(
                      color: secondaryText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          header(),
          categoryList(),
        ],
      ),
    );
  }
}
