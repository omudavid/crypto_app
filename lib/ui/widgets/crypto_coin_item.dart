import 'package:cached_network_image/cached_network_image.dart';
import 'package:cypto_app/repository/model/Crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCoinItem extends StatelessWidget {
  const CryptoCoinItem({
    Key? key,
    required this.crypto,
    required this.onTap,
  }) : super(key: key);

  final Crypto crypto;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 92,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: crypto.iconUrl!,
              placeholder: (_, str) => const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
              ),
              imageBuilder: (_, imgProvider) {
                return CircleAvatar(
                  radius: 30,
                  backgroundImage: imgProvider,
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${crypto.name} ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  '${crypto.nameFull} ',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  '${crypto.symbol} ',
                  style: TextStyle(fontWeight: FontWeight.w100),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
