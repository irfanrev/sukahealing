import 'package:flutter/material.dart';

class ArrivalCard extends StatelessWidget {
  const ArrivalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
