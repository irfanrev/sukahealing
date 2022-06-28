import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:suka_healing/theme.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/img/curug.png',
    'assets/img/curug.png',
    'assets/img/curug.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            
            child: CarouselSlider(
                items: images
                    .map((image) => Image.asset(
                          image,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: 280,
                        ))
                    .toList(),
                options: CarouselOptions()),
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
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primaryText,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget contentProduct() {
      return DraggableScrollableSheet(
      initialChildSize: 0.6,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        builder: ((context, scrollController) {
        return Container(
          
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
          ),
          child: ListView(
            children: [
              Text('adfd'),
            ],
          ),
        );
      }));
    }

    return Scaffold(
      backgroundColor: bgColor2,
      body:  SizedBox.expand(
        child: Stack(
          children: [
            header(),
            contentProduct(),
          ],
        ),
      ),
    );
  }
}
