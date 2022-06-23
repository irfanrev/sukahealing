import 'package:flutter/material.dart';
import 'package:suka_healing/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
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
                      'Pantai Karang Bolong',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: primaryText,
                      ),
                    ),
                    Text(
                      'Halo, selamat siang saya ingin adfafadfa dfsfsadf sdfasfas',
                      style: GoogleFonts.poppins(
                        color: secondaryText,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Now',
                style: GoogleFonts.poppins(
                  color: secondaryText,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
