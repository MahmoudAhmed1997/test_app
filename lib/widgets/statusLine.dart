import 'package:flutter/material.dart';

class StatusLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Stack(

      children: [
        Container(
          child: ImageIcon(
            AssetImage(
                "assets/icons/rectangle_73.png"),size: 30,
            color: Color(0xff32367F),

          ),
        ),
        Center(
          child: ImageIcon(
            AssetImage(
                "assets/icons/mdi_stars.png"),size: 30,
            color: Colors.white
            ,
          ),
        ),
      ],
    );

  }
}
