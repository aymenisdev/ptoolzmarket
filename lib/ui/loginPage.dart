// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales/backend/conest.dart';
import 'package:sales/backend/fun.dart';
import 'package:sales/ui/homePage.dart';
import 'package:sales/ui/signupPage.dart';

const List<String> list = <String>['+20', '+966'];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

enum SingingCharacter { email, mobile }

class _LoginPageState extends State<LoginPage> {
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
            padding: const EdgeInsets.only(top: 90, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 68,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/logow.png",
                  height: 56,
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
                    'تسجيل الدخول الآن',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const Text('الرجاء إدخال التفاصيل أدناه للمتابعة'),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'الايميل',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Transform.scale(
                      scale: 1.4,
                      child: Radio(
                          value: SingingCharacter.email,
                          groupValue: loginOption,
                          autofocus: true,
                          materialTapTargetSize:
                              MaterialTapTargetSize.values.first,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              loginOption = value;
                            });
                          },
                          activeColor: primaryColor),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'الموبايل',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Transform.scale(
                      scale: 1.4,
                      child: Radio(
                        value: SingingCharacter.mobile,
                        groupValue: loginOption,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            loginOption = value;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                loginOption == SingingCharacter.mobile
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 54,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'رقم الموبايل',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 99, 99, 99),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    // elevation: 14,

                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: // ignore: prefer_const_literals_to_create_immutables
                                        TextField(
                                      controller: mobile,
                                      keyboardType: TextInputType.number,
                                      // obscureText: true,
                                      textAlign: TextAlign.end,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 112,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'اسم المستخدم او البريد الالكتروني',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 99, 99, 99),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: // ignore: prefer_const_literals_to_create_immutables
                                        TextField(
                                      controller: email,
                                      // obscureText: true,
                                      textAlign: TextAlign.end,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'كلمة المرور',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 99, 99, 99),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 40.0, left: 40.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: // ignore: prefer_const_literals_to_create_immutables
                                        TextField(
                                      controller: password,
                                      obscureText: true,
                                      textAlign: TextAlign.end,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 40.0, top: 6),
                                child: Text(
                                  'نسيت كلمة المرور ؟',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: primaryColor,
                                    // height: 1.5,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                        ],
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
                            'تسجيل الدخول',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                      ),
                      child: const Text(
                        'اشتراك ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'ليس لديك حساب؟',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
