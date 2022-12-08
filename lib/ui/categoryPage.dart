// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales/backend/conest.dart';
import 'package:sales/backend/fun.dart';
import 'package:sales/ui/loginPage.dart';
import 'package:sales/ui/src/dialog.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SvgPicture.asset(
                        "assets/images/dollar-sign.svg",
                        width: 24,
                        height: 24,
                      ),
                      const Text(
                        '122',
                        style: TextStyle(
                            color: Color.fromRGBO(39, 184, 127, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                    'طباعة',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset('assets/images/i-back.svg'))
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              ':عدد مقدم الخدمة',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'مقدم خدمة',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '12:22 06 Oct',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      '590',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      ':نسبة الربح الكلية',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'اسم مقدم الخدمة',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          '60',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          ':ع.ع',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    "assets/images/sp.png",
                                  ),
                                  maxRadius: 27,
                                  // backgroundImage: NetworkImage('assets/img/profile.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '12:22 06 Oct',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      '590',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      ':نسبة الربح الكلية',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'اسم مقدم الخدمة',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          '60',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          ':ع.ع',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    "assets/images/sp.png",
                                  ),
                                  maxRadius: 27,
                                  // backgroundImage: NetworkImage('assets/img/profile.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '12:22 06 Oct',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      '590',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      ':نسبة الربح الكلية',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'اسم مقدم الخدمة',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          '60',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          ':ع.ع',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    "assets/images/sp.png",
                                  ),
                                  maxRadius: 27,
                                  // backgroundImage: NetworkImage('assets/img/profile.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '12:22 06 Oct',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      '590',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      ':نسبة الربح الكلية',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'اسم مقدم الخدمة',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          '60',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          ':ع.ع',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    "assets/images/sp.png",
                                  ),
                                  maxRadius: 27,
                                  // backgroundImage: NetworkImage('assets/img/profile.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '12:22 06 Oct',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 94, 94, 94),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      '590',
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      ':نسبة الربح الكلية',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'اسم مقدم الخدمة',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          '60',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          ':ع.ع',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                    "assets/images/sp.png",
                                  ),
                                  maxRadius: 27,
                                  // backgroundImage: NetworkImage('assets/img/profile.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6.0, bottom: 6.0),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
