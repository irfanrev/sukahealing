import 'package:flutter/material.dart';
import 'package:suka_healing/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.only(right: 5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor,
                    ),
                    child: Icon(Icons.arrow_back_ios_new_rounded, color: primaryText, size: 20,),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}