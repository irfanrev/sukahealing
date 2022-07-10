import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Curug Cikaso',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Surade, Sukabumi',
                                style: GoogleFonts.poppins(
                                  color: secondaryText,
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
                            color: bgColor2,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: bgColor,
                          ),
                        ),
                      ],
                    ),
                    
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: bgColor2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description', style: GoogleFonts.poppins(
                          color: primaryText,
                          fontSize: 16,
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('In this video, I will explain how to get started with NodeJS, express, and MongoDB. We will learn how to create APIs and use MongoDB for the database. We will also explore MongoDB Atlas.', style: GoogleFonts.poppins(
                          color: secondaryText,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            );
          }));
    }

    return Scaffold(
      backgroundColor: bgColor2,
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              header(),
              contentProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
