import 'package:flutter/material.dart';
import 'package:suka_healing/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: bgColor,
            title: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: const Icon(
                          Icons.person_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Curug Cikaso',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Online',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: secondaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ));
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: bgColor3,
                ),
                child: Center(
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Type message...',
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: secondaryColor,
              ),
              child: const Icon(
                Icons.send_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: const [
          ChatBubble(
            text:
                'Heloo selamat siang, saya ada rencana ke curug cikaso nih afad sdafadsf dsfdasfa',
            isSender: true,
          ),
          ChatBubble(
            text: 'Heloo selamat siang jug',
            isSender: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
