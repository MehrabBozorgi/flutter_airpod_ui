import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airpod/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        color: primaryColor,
                        size: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 170,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: imageBackGroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Favorite',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'AirPods 641',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'pic3.png',
                        height: 140,
                        width: 140,
                      ),
                    ],
                  ),
                ),
                const DotsWidget(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text(
                              'TWS',
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              color: primaryColor,
                              width: 20,
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'NECKBAND',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Wired',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'HEADPHONES',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'AIRPODS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ProductWidget(
                          image: 'pic2.png',
                          text: 'AirPods Max - Gris sidéral',
                          price: '\$13',
                        ),
                        SizedBox(width: 20),
                        ProductWidget(
                          image: 'pic4.png',
                          text: 'EarPods avec mini',
                          price: '\$20',
                        ),
                        SizedBox(width: 20),
                        ProductWidget(
                          image: 'pic1.png',
                          text: 'EarPods mini',
                          price: '\$25',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: imageBackGroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const DotsWidget(),
                          ),
                          const Text(
                            'EarPods avec',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'connecteur Lightning',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '\$32',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              primary: primaryColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 15),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('pic4.png')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DotsWidget extends StatelessWidget {
  const DotsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: imageBackGroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: imageBackGroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: imageBackGroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String text;
  final String image;
  final String price;

  const ProductWidget({
    Key? key,
    required this.text,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      decoration: BoxDecoration(
        color: imageBackGroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              image,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      text,
                      softWrap: true,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      price,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
