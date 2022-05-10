
import 'package:flutter/material.dart';

import '../theme/color.dart';


class ImageProfile extends StatelessWidget {
  const ImageProfile(this.name, {this.width = 100, this.height = 100, this.bgColor, this.borderWidth = 0, this.borderColor, this.trBackground = false, this.isNetwork = true, this.radius = 50});
  final String name;
  final double width;
  final double height;
  final double borderWidth;
  final Color? borderColor;
  final Color? bgColor;
  final bool trBackground;
  final bool isNetwork;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return
      Container(width: width, height: height,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          image: DecorationImage(image:AssetImage(name),
              fit: BoxFit.cover
          ),
        ),
      )
    ;
  }

}