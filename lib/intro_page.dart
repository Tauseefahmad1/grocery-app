import 'package:flutter/material.dart';
import 'package:grocery_items/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              bottom: 20,
              top: 80,
            ),
            child: Image.asset(
              'images/avocado.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'We deliver groceries at your door steps',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Fresh items everyday',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(17),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
