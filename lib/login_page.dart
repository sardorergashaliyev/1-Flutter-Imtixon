import 'package:flutter/material.dart';
import 'package:imtixon/home_page.dart';
import 'package:imtixon/signup_page.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

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
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 115),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MySignUpPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign-up',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 104,
                        height: 3,
                        color: const Color(0xffFA4A0C),
                      ),
                      Container(
                        width: 104,
                        height: 3,
                        color: Colors.transparent,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.5),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username, Mobile Number',
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
              padding: const EdgeInsets.symmetric(horizontal: 47.5),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
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
            const Padding(
              padding: EdgeInsets.only(left: 53),
              child: Text(
                'Forgot password?',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xffFA4A0C)),
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MyHomePage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 46.5),
                height: 56,
                decoration: const BoxDecoration(
                  color: Color(0xffF8774A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                'Or',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 46.5),
              padding: const EdgeInsets.only(),
              decoration: const BoxDecoration(
                  color: Color(0xff1877F2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 24,
                  ),
                  Text(
                    'Log In with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 46.5),
              padding: const EdgeInsets.only(),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 28),
                  Container(
                    width: 23,
                    height: 23,
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/logo_google.png'),
                    ),
                  ),
                  const SizedBox(width: 28),
                  const Text(
                    'Log In with Google',
                    style: TextStyle(
                      color: Color.fromARGB(160, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
