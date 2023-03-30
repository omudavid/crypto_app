import 'package:cypto_app/ui/screens/receive_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/home_action_button.dart';
import '../widgets/recent_activities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.shortestSide - 35,
                      height: 176,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/card_background.png')),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'USDC BALANCE',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '400000.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'View Account Deails',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.shortestSide - 35,
                      height: 176,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/tropic_background.jpeg')),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'USDT BALANCE',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '30000.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'View Account Deails',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: HomeActionButton(
                                onTap: () {},
                                label: 'New Wallet',
                                assetSvg: 'add_circle')),
                        Expanded(
                            child: HomeActionButton(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ReceiveScreen(),
                                    ),
                                  );
                                },
                                label: 'Receive ',
                                assetSvg: 'round_arrow_down')),
                        Expanded(
                            child: HomeActionButton(
                                onTap: () {},
                                label: 'Send',
                                assetSvg: 'round_arrow_right_up')),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recent Activities',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //EmptyHomeTransactions()
                    RecentActivities()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
