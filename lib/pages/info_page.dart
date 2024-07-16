import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (index) => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()))
          },
          tabs: const [

            GButton(
              icon: Icons.home,
              text: "Home",
            )
          ],
        ),
      ),
    );
  }
}
