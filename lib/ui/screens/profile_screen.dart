import 'package:cypto_app/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/profile_image.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Agilan Senthil',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'agilansenthilkumar@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '+91 9444977118',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileMenuItem(title: 'History', icon: 'history'),
            ProfileMenuItem(title: 'Bank Details', icon: 'bank'),
            ProfileMenuItem(title: 'Notification', icon: 'notification'),
            ProfileMenuItem(title: 'Security', icon: 'security'),
            ProfileMenuItem(title: 'Help and Support', icon: 'help'),
            ProfileMenuItem(title: 'Terms and Conditions', icon: 'terms'),
          ],
        ),
      ),
    );
  }
}
