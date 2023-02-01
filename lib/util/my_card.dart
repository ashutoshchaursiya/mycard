import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expirymonth;
  final int expiryyear;
  final color;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardnumber,
    required this.expirymonth,
    required this.expiryyear,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'balance',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Image.asset(
                    'images/mastercard.png',
                    height: 50,
                  ),
                ],
              ),
              Text(
                '\$' + balance.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardnumber.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    expirymonth.toString() + '/' + expiryyear.toString(),
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
