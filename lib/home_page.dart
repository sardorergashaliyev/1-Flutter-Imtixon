import 'package:flutter/material.dart';
import 'package:imtixon/fake_page.dart';

import 'model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Model> data = [
    Model(
        titles: "Cappuccino",
        price: 200,
        photo: Image.asset(
          'assets/1coffe.png',
          fit: BoxFit.cover,
        ),
        place: "Suhani Restaurant"),
    Model(
        titles: 'Egg and cheese sandwich',
        price: 200,
        photo: Image.asset(
          'assets/1tuxum.png',
          fit: BoxFit.cover,
        ),
        place: 'Mehfil\'s Place'),
    Model(
      titles: '   Strawberry Icecream',
      price: 200,
      photo: Image.asset(
        'assets/1musqaymoq.png',
        fit: BoxFit.cover,
      ),
      place: '   Cream Stone',
    ),
  ];

  List<Model> saveData = [
    Model(
        titles: "Wow! Momo",
        price: 125,
        photo: Image.asset(
          'assets/2salat.png',
          fit: BoxFit.cover,
        ),
        place: '   Fast food, Chinese'),
    Model(
        titles: '   Istah - Shawarma',
        price: 125,
        photo: Image.asset(
          'assets/2tuxum.png',
          fit: BoxFit.cover,
        ),
        place: '   Arabian, Lebanese'),
    Model(
      titles: '   Biryanis and more',
      price: 200,
      photo: Image.asset(
        'assets/2tuxum.png',
        fit: BoxFit.cover,
      ),
      place: '   Hyderabadi, North Indian, etc',
    ),
  ];

  List<Model> orderData = [
    Model(
        titles: 'Kcf Combo',
        price: 125,
        photo: Image.asset(
          'assets/kfc.png',
          fit: BoxFit.cover,
        ),
        place: ''),
    Model(
        titles: 'Burger King Combo',
        price: 125,
        photo: Image.asset(
          'assets/burger.png',
          fit: BoxFit.cover,
        ),
        place: '')
  ];

  List<Model> popularData = [
    Model(
      titles: 'KFC',
      price: 200,
      photo: Image.asset(
        'assets/kfc4.png',
        fit: BoxFit.cover,
      ),
      place: 'Desi, Italian, +3 more',
    ),
    Model(
      titles: 'Burger King',
      price: 200,
      photo: Image.asset(
        'assets/kfc4.2.png',
        fit: BoxFit.cover,
      ),
      place: 'Burgers, Bevarages',
    ),
    Model(
      titles: 'Paradise Restaurant',
      price: 200,
      photo: Image.asset(
        'assets/2salat.png',
        fit: BoxFit.cover,
      ),
      place: 'Halal Food',
    )
  ];

  @override
  Widget build(BuildContext con) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 28),
              Row(
                children: [
                  const SizedBox(width: 28),
                  const Icon(
                    Icons.home,
                    color: Color(0xff2E3A59),
                    size: 38,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '21-42-34, Banjara Hills, Hyder....',
                        style: TextStyle(
                            color: Color(0xffB2B2B2),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Color(0xff97D5C8),
                    size: 35,
                  )
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Container(
                    width: 290,
                    height: 39,
                    margin: const EdgeInsets.only(left: 22, right: 18),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff4F4F4F),
                        ),
                        hintText: 'Search Food',
                        hintStyle: TextStyle(
                          color: Color(0xff4F4F4F),
                        ),
                        filled: true,
                        fillColor: Color(0xffF3F3F3),
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
                  const SizedBox(
                      height: 38,
                      width: 38,
                      child: Image(image: AssetImage('assets/filter.png')))
                ],
              ),
              const SizedBox(height: 13),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 370,
                      margin: const EdgeInsets.only(left: 16, right: 15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff51B698),
                            Color(0xff6AF0E0),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15, top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Select Preferences',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'For multiple users.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(height: 19),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    'You can now order from multiple restaurants at the same time!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24)
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [
                              const SizedBox(
                                height: 98,
                                width: 128,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/kok.png'),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'SET THEM NOW',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 370,
                      margin: const EdgeInsets.only(left: 16, right: 15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFB6A70),
                            Color(0xffFCA384),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15, top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Rescued Food',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Saving food and hunger.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic),
                                ),
                                SizedBox(height: 19),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    'Left over food and supplies are gathered and sold for 50% off!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24)
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [
                              const SizedBox(
                                height: 98,
                                width: 128,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/pushti.png'),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'ORDER NOW',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 129, 225, 212),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color(0xff53B99C),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color(0xff53B99C),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: const BoxDecoration(
                      color: Color(0xff53B99C),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: const [
                  SizedBox(width: 21),
                  Text(
                    'Your Preferences',
                    style: TextStyle(
                      color: Color(0xff4FA987),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: 71),
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xffA4A4A4),
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.edit,
                    size: 16,
                    color: Color(0xffA4A4A4),
                  )
                ],
              ),
              const SizedBox(height: 17),
              const SizedBox(
                width: 300,
                child: Text(
                  'Now order user specific food directly below!',
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 23, right: 27),
                padding: const EdgeInsets.only(right: 41, left: 26),
                decoration: const BoxDecoration(
                  color: Color(
                    0xffF3F3F3,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'User 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 23, right: 27),
                padding: const EdgeInsets.only(right: 41, left: 26),
                decoration: const BoxDecoration(
                  color: Color(
                    0xffF3F3F3,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'User 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 23, right: 27),
                padding: const EdgeInsets.only(right: 41, left: 26),
                decoration: const BoxDecoration(
                  color: Color(
                    0xffF3F3F3,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'User 3',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Container(
                height: 60,
                margin: const EdgeInsets.only(left: 23, right: 27),
                padding: const EdgeInsets.only(right: 41, left: 26),
                decoration: const BoxDecoration(
                  color: Color(
                    0xffF3F3F3,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'User 4',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 87,
                    height: 101,
                    child: Image(
                      image: AssetImage('assets/hot_details.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 87,
                    height: 90,
                    child: Image(
                      image: AssetImage('assets/new.png'),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Column(
                      children: const [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                Image(image: AssetImage('assets/wallet.png'))),
                        Text(
                          'Save Food, Save Hunger',
                          style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 43,
                          width: 43,
                          child: Image(
                            image: AssetImage('assets/liked.png'),
                          ),
                        ),
                        SizedBox(
                          height: 53,
                          width: 87,
                          child: Image(
                            image: AssetImage('assets/set.png'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 19),
              Container(
                margin: const EdgeInsets.only(left: 27, right: 23),
                height: 370,
                decoration: const BoxDecoration(
                  color: Color(0xffFDF9EA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(13),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        SizedBox(width: 20),
                        Text(
                          'Looking for ',
                          style: TextStyle(
                              color: Color(0xffF88922),
                              fontWeight: FontWeight.w400,
                              fontSize: 19),
                        ),
                        Text(
                          'Breakfast?',
                          style: TextStyle(
                              color: Color(0xffF88922),
                              fontWeight: FontWeight.w700,
                              fontSize: 19),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Here\'s what you might like to taste',
                        style: TextStyle(
                            color: Color(0xffA6978A),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                (con),
                                MaterialPageRoute(
                                  builder: (_) => FakePage(
                                    place: data[index].place,
                                    image: data[index].photo,
                                    name: data[index].titles,
                                    price: data[index].price,
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 254,
                              width: 190,
                              margin: const EdgeInsets.only(left: 10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  data[index].photo,
                                  Text(
                                    data[index].titles,
                                    style: const TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    data[index].place,
                                    style: const TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '₹${data[index].price}',
                                    style: const TextStyle(
                                      color: Color(0xffF88922),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                  ),
                                  const SizedBox(height: 10)
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Image.asset('assets/desi.png'),
              const SizedBox(height: 19),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Save Rescued Food for 50%!',
                        style: TextStyle(
                            color: Color(0xff4FA987),
                            fontSize: 19,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Left over supplies and food have been used up.',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 57,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        color: const Color(0xffC8C8C8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'All >',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => FakePage(
                              image: saveData[index].photo,
                              price: saveData[index].price,
                              place: saveData[index].place,
                              name: saveData[index].titles,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 254,
                        width: 190,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            saveData[index].photo,
                            Text(
                              saveData[index].titles,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              saveData[index].place,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  '₹${saveData[index].price}',
                                  style: const TextStyle(
                                    color: Color(0xffF88922),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/saved.png',
                                  height: 19,
                                  width: 13,
                                ),
                                const SizedBox(width: 24)
                              ],
                            ),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Order Again',
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 19,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'You Ordered from 17 Restaurants',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 57,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        color: const Color(0xffC8C8C8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'All >',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                width: 350,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 138,
                      width: 294,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffC4C4C4)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 14, left: 16),
                            height: 53,
                            width: 53,
                            child: orderData[index].photo,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(width: 9),
                                  Text(
                                    orderData[index].titles,
                                    style: const TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '₹${orderData[index].price}',
                                    style: const TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Yesterday 3pm'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                  '1 Kacchi biriyani · 1 chilli onion... ')
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Popular Restaurants Nearby',
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 19,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 2),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Some of them offer rescued food.',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 57,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(13)),
                      border: Border.all(
                        color: const Color(0xffC8C8C8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'All >',
                        style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => FakePage(
                              image: popularData[index].photo,
                              price: popularData[index].price,
                              place: popularData[index].place,
                              name: popularData[index].titles,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 254,
                        width: 190,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            popularData[index].photo,
                            Text(
                              popularData[index].titles,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              popularData[index].place,
                              style: const TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  '₹${popularData[index].price}',
                                  style: const TextStyle(
                                    color: Color(0xffF88922),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/saved.png',
                                  height: 19,
                                  width: 13,
                                ),
                                const SizedBox(width: 24)
                              ],
                            ),
                            const SizedBox(height: 10)
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height + 90,
                padding: const EdgeInsets.only(left: 50),
                child: Image(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height + 200,
                  fit: BoxFit.cover,
                  image: const AssetImage('assets/burgerking.png'),
                ),
              ),
              Container(
                height: 53,
                width: 300,
                child: const Image(
                  image: AssetImage('assets/view.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
