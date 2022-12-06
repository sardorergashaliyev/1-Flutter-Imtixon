import 'package:flutter/material.dart';

class FakePage extends StatefulWidget {
  final Image image;
  final int price;
  final String name;
  final String place;
  const FakePage(
      {required this.image,
      required this.price,
      required this.place,
      required this.name,
      super.key});

  @override
  State<FakePage> createState() => _FakePageState();
}

class _FakePageState extends State<FakePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
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
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: widget.image),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4A4A4A),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(widget.place)
                      ],
                    ),
                  ),
                  const SizedBox(width: 140),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffFF785B),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Color(0xffFE7B5F),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 21),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 23),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5E5959),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 170,
                        child: Text(
                          'Our fried rice is made from the finest ingredients and veggies. single dish is made with fresh vegetables, rescued.',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5E5959),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 25,
                        width: 190,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 177, 177, 177),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 15),
                            Text(
                              'Rescued',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 30),
                            Text(
                              'Vegan',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.schedule,
                              color: Color(0xffF9545B),
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '30 min',
                              style: TextStyle(
                                  color: Color(0xff9E9E9E),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Nutritional Value',
                          style: TextStyle(
                              color: Color(0xff5E5959),
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        width: 137,
                        child: Divider(
                          thickness: 1,
                          color: Color(0xff5D5959),
                        ),
                      ),
                      const SizedBox(width: 21),
                      Row(
                        children: const [
                          Text(
                            'Protein',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 77),
                          Text(
                            '2.5g',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: const [
                          Text(
                            'Carbohydrates',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 45),
                          Text(
                            '14.7g',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: const [
                          Text(
                            'Sodium',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 75),
                          Text(
                            '19%*',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: const [
                          Text(
                            'Potassium',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 65),
                          Text(
                            '5%*',
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: const [
                          Text(
                            'Rich in Vitamin A, C and B3',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 53,
                            child: Image.asset(
                              'assets/calories.png',
                            ),
                          ),
                          const SizedBox(width: 30),
                          const Text(
                            '*Daily value',
                            style: TextStyle(fontSize: 6),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16))),
                        width: 350,
                        height: 78,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 22, top: 8),
                              child: Text(
                                'Ingredients',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 61,
                                    height: 41,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/rise.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    width: 61,
                                    height: 41,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/olive.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    width: 61,
                                    height: 41,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        image: DecorationImage(
                                            image: AssetImage('assets/sav.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                  Container(
                                    width: 61,
                                    height: 41,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(16)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/sabsi.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 50),
                          child: Container(
                            width: 295,
                            height: 34,
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Select User -',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                                Text(
                                  'User 1',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Icon(Icons.arrow_downward)
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50, left: 5),
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Icon(Icons.edit),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 22),
                      child: Text(
                        'Additions',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 32),
                      child: Container(
                        width: 361,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            border: Border.all(color: const Color(0xffFF785B))),
                        child: Row(
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 13, top: 7, bottom: 7),
                              child: Text('Paneer'),
                            ),
                            Spacer(),
                            Icon(Icons.expand_more)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 375,
                      height: 58,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(28)),
                          color: Color(0xffFF785B)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '₹${widget.price}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                            ),
                          ),
                          Container(
                            width: 128,
                            height: 34,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      counter -= 1;
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.minimize,
                                      size: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '${counter}',
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      counter += 1;
                                      setState(() {});
                                    },
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 5),
                                      child: Text(
                                        '+',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 31,
                            height: 31,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.shopping_basket_outlined,
                            )),
                          )
                        ],
                      ),
                    )
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
