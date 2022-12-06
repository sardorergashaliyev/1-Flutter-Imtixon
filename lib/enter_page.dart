import 'package:flutter/material.dart';
import 'package:imtixon/login_page.dart';

class MyEnterPage extends StatelessWidget {
  const MyEnterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/enter.png'),
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MyLoginPage()),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  image: AssetImage('assets/enterlogo.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
