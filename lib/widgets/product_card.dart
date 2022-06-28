import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product'),
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 215,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/curug.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.only(top: 10, right: 12, left: 12, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Curug',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: secondaryText,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Curug Cikaso bla bla',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: bgColor2,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Surade, Sukabumi',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
