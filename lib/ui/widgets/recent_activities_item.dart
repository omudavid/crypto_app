import 'package:flutter/material.dart';

class RecentActivitiesItem extends StatelessWidget {
  const RecentActivitiesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          // IconInGreyCircle(imageAsset: 'round_arrow_left_down'),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Received from @Kelvin',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Feb. 19, 1:51 am')
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text('50,000')
        ],
      ),
    );
  }
}
