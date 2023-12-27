// import 'package:flutter/material.dart';
//
// import '../Utils/HelperFiles/math_utils.dart';
//
// class AppCircleavatar extends StatelessWidget {
//
//   String? image;
//   double? maxradius;
//   Color? color;
//   double? width;
//
//   AppCircleavatar( {this.image, this.maxradius, this.color, this.width});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.transparent,
//           shape: BoxShape.circle,
//           border: Border.all(
//               color: color ?? Colors.transparent, width: getHorizontalSize(3))),
//       child: CircleAvatar(
//         maxRadius: maxradius ?? 30,
//         child: Image.asset(
//           image!,
//           fit: BoxFit.cover,
//           width: width,
//         ),
//       ),
//     );
//   }
// }
