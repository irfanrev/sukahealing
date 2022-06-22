import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/theme.dart';

class ArrivalCard extends StatelessWidget {
  const ArrivalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage('assets/img/curug.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curug',
                  style: GoogleFonts.poppins(
                    color: secondaryText,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Curug Cimarinjung',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primaryText,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Ciemas, Sukabumi',
                  style: GoogleFonts.poppins(
                    color: secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
