import 'package:flutter/material.dart';
import 'package:imtixon/home_page.dart';
import 'package:imtixon/login_page.dart';

class MySignUpPage extends StatelessWidget {
  const MySignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 345,
              width: 414,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 39),
                    child: Image(
                      image: AssetImage('assets/enterlogo.png'),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 88),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 115),
                      const Text(
                        'Sign-up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 104,
                        height: 3,
                        color: Colors.transparent,
                      ),
                      Container(
                        width: 104,
                        height: 3,
                        color: const Color(0xffFA4A0C),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 38),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 54),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xffF8774A),
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 48),
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/logo_google.png')),
                ),
                const SizedBox(width: 16),
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Image(
                    image: NetworkImage(
                        ''),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                  hintText: '   Full Name',
                  hintStyle: TextStyle(
                    color: Color(0xffA0A0A0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                  hintText: '   Mobile Number',
                  hintStyle: TextStyle(
                    color: Color(0xffA0A0A0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                  hintText: '   Password',
                  hintStyle: TextStyle(
                    color: Color(0xffA0A0A0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 48),
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                  hintText: '   Confirm Password',
                  hintStyle: TextStyle(
                    color: Color(0xffA0A0A0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MyHomePage()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 51, right: 12),
                    height: 56,
                    width: 183,
                    decoration: const BoxDecoration(
                      color: Color(0xffF8774A),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign-up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  '''Already a
Member? Login''',
                  style: TextStyle(color: Color(0xffB3B3B3), fontSize: 16),
                ),
                SizedBox(width: 27)
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
