import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_healing/pages/auth/login_page.dart';
import 'package:suka_healing/pages/auth/register_page.dart';
import 'package:suka_healing/pages/chats/detail_chat_page.dart';
import 'package:suka_healing/pages/chats/main_chat.dart';
import 'package:suka_healing/pages/home/main_page.dart';
import 'package:suka_healing/pages/product_page.dart';
import 'package:suka_healing/pages/splash_page.dart';
import 'package:suka_healing/pages/wishlist/wishlist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/main': (context) => const MainPages(),
        '/chat-room': (context) => const MainChat(),
        '/chat-detail': (context) => const DetailChatPage(),
        '/wishlist': (context) => const WishlistPage(),
        '/product': (context) => const ProductPage(),
      },
    );
  }
}
