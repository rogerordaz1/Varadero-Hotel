import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:varadero/Widget/raitingBar.dart';

class Carta extends StatelessWidget {
  const Carta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          height: Get.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.25,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: AssetImage('assets/blau.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RaitingBar(),
                      /**  uso es simbolo para lograr que reconozca el simbolo de peso como un caracter */
                      Text(
                        '  \$ 4000 Cup',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Blau Resort',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 300,
          ),
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 251, 251, 0.79),
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Center(
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 2,
                        top: 1,
                      ),
                      child: LikeButton()))),
        )
      ],
    );
  }
}