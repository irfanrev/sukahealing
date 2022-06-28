import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  image: AssetImage('assets/img/curug.png'), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curug Cikaso',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: primaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Surade, Sukabumi',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,

            ),
            child: Icon(Icons.favorite_rounded, color: primaryText, size: 20,),
          ),
        ],
      ),
    );
  }
}
