import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeActionButton extends StatelessWidget {
  const HomeActionButton(
      {Key? key,
      required this.onTap,
      required this.label,
      required this.assetSvg})
      : super(key: key);

  final Function() onTap;
  final String label, assetSvg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        onPressed: onTap,
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/$assetSvg.svg',
              height: 20,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
