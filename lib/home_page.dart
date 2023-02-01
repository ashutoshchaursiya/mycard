import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mycard/util/my_button.dart';
import 'package:mycard/util/my_card.dart';
import 'package:mycard/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //page controller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 32,
              color: Colors.pink[200],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              iconSize: 32,
              color: Colors.grey[400],
            ),
          ]),
        ),
      ),
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                        child: Icon(
                          Icons.add,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  MyCard(
                    balance: 1542.25,
                    cardnumber: 159652358,
                    expirymonth: 12,
                    expiryyear: 25,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 7589.25,
                    cardnumber: 145254125,
                    expirymonth: 10,
                    expiryyear: 22,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 1542.62,
                    cardnumber: 145875248,
                    expirymonth: 11,
                    expiryyear: 24,
                    color: Colors.orange[300],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
              controller: _controller,
              count: 3,
            ),
            const SizedBox(
              height: 28,
            ),

            //3 buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    IconImagePath: 'images/money_t.png',
                    buttonText: 'Send',
                  ),

                  //pay button
                  MyButton(
                    IconImagePath: 'images/card.png',
                    buttonText: 'Pay',
                  ),

                  //  bills button
                  MyButton(
                    IconImagePath: 'images/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            //column stats + tranzation

            Column(
              children: [
                MyListTile(
                  iconImagePath: 'images/statistics.png',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'payments and bills',
                ),
                MyListTile(
                  iconImagePath: 'images/transaction.png',
                  tileTitle: 'Transaction',
                  tileSubTitle: 'Transaction history',
                )
              ],
            )
          ],
        ),
      ),
      //
    );
  }
}
