// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales/backend/conest.dart';
import 'package:sales/backend/fun.dart';
import 'package:sales/ui/homePage.dart';
import 'package:sales/ui/signupPage.dart';

const List<String> list = <String>['+20', '+966'];

class IdValidatePage extends StatefulWidget {
  const IdValidatePage({super.key});

  @override
  State<IdValidatePage> createState() => _IdValidatePageState();
}

enum SingingCharacter { email, mobile }

class _IdValidatePageState extends State<IdValidatePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  SingingCharacter? loginOption = SingingCharacter.email;

  String dropdownValue = list.first;

  var email = TextEditingController();
  var mobile = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/idvalidate.png",
                  height: 120,
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'التحقق من الهوية الشخصية',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const Text(
                  'سوف يتم التحقق من الشخصية من خلال بطاقة \n الهوية او جواز السفر ',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 38,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'صورة البطاقة الشخصية',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset("assets/images/uploadImg.svg"),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'صورة شخصية مع صورة البطاقة',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset("assets/images/uploadImg.svg"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 95,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(253, 85, 161, 1),
                              Color.fromRGBO(0, 0, 0, 1),
                            ],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'تحقق',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
