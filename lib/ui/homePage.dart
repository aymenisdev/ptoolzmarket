// ignore: file_names
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales/backend/conest.dart';
import 'package:sales/backend/fun.dart';
import 'package:sales/ui/categoryPage.dart';
import 'package:sales/ui/loginPage.dart';
import 'package:sales/ui/src/dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

const List<String> list = <String>['اختر الخدمة', 'طباعة', 'تصوير'];

enum SingingCharacter { email, mobile }

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  SingingCharacter? loginOption = SingingCharacter.email;

  String dropdownValue = list.first;

  var email = TextEditingController();
  var mobile = TextEditingController();
  var password = TextEditingController();

  Future<void> addSPDialog(BuildContext context) async {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 400),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            height: 446,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Material(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset('assets/images/close.svg')),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'تجاري',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                        'فرد',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 14,
                          isExpanded: true,
                          underline: Container(),
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
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: email,
                          // obscureText: true,
                          textAlign: TextAlign.end,
                          decoration: const InputDecoration(
                            hintText: "الاسم",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: email,
                          // obscureText: true,
                          textAlign: TextAlign.end,
                          decoration: const InputDecoration(
                            hintText: "كود مقدم الخدمة",
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 51,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(253, 85, 161, 1),
                              Color.fromRGBO(253, 85, 161, 1),
                              // Color.fromRGBO(0, 0, 0, 1),
                            ],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'اضافة',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim),
          child: child,
        );
      },
    );
  }

  void openMenu() {
    _key.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables

      key: _key,

      endDrawer: Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(children: [
          // const DrawerHeader(child: Text('Header')),
          const SizedBox(
            height: 48,
          ),
          Row(
            children: [
              const SizedBox(
                width: 36,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'EN',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Spacer(),
              const Text(
                'سعدي حرب',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/images/profile.png",
                ),
                maxRadius: 27,
                // backgroundImage: NetworkImage('assets/img/profile.jpg'),
              ),
              const SizedBox(
                width: 36,
              ),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          const Divider(thickness: 1, indent: 36.0, endIndent: 36.0),

          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Column(
              children: [
                ListTile(
                    title: const Text(
                      'المحفظة',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-wallet.svg")),
                ListTile(
                    title: const Text(
                      'البروفايل',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-profile.svg")),
                ListTile(
                    title: const Text(
                      'التحقق من الهوية',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-id.svg")),
                ListTile(
                    title: const Text(
                      'من نحن',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-us.svg")),
                ListTile(
                    title: const Text(
                      'معلومات',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-info.svg")),
                ListTile(
                    title: const Text(
                      'تواصل معنا',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing:
                        SvgPicture.asset("assets/images/i-contactus.svg")),
                ListTile(
                    title: const Text(
                      'الشروط والاحكام',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-terms.svg")),
                ListTile(
                    title: const Text(
                      'سياسة الخصوصية',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: SvgPicture.asset("assets/images/i-privacy.svg")),
              ],
            ),
          ),

          const Divider(thickness: 1, indent: 36.0, endIndent: 36.0),

          ListTile(
            title: const Text(
              'تسجيل الخروج',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            ),
          ),
        ]),
      ),
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
                    'Ptoolz Marketing',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _key.currentState?.openEndDrawer();
                    },
                  )
                ],
              ),
            ),
            Expanded(
                child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CategoryPage()),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.2,

                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SvgPicture.asset("assets/images/video.svg"),
                          const Text(
                            'مونتاج',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child:
                                SvgPicture.asset("assets/images/printing.svg"),
                          ),
                          const Text(
                            'طباعة',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      // padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child: SvgPicture.asset("assets/images/camera.svg"),
                          ),
                          const Text(
                            'تأجير كاميرات',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child: SvgPicture.asset(
                                "assets/images/videographer.svg"),
                          ),
                          const Text(
                            'تصوير',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            // width: 100,
                            height: 110,
                            child: SvgPicture.asset("assets/images/gift.svg"),
                          ),
                          const Text(
                            'هدايا',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child:
                                SvgPicture.asset("assets/images/transfer.svg"),
                          ),
                          const Text(
                            'الترجمة',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child:
                                SvgPicture.asset("assets/images/company.svg"),
                          ),
                          const Text(
                            'الشركات و المؤسسات',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, left: 15.0, top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(
                            height: 110,
                            child: SvgPicture.asset("assets/images/book.svg"),
                          ),
                          const Text(
                            'الخدمات الدراسية',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SvgPicture.asset("assets/images/noti.svg"),
              const Text(
                'الرئيسية',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SvgPicture.asset("assets/images/analysis.svg"),
              const Text(
                'الرئيسية',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [const Text('')],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SvgPicture.asset("assets/images/team.svg"),
              const Text(
                'الرئيسية',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SvgPicture.asset("assets/images/home.svg"),
              const Text(
                'الرئيسية',
                style: TextStyle(
                  fontSize: 12,
                  color: primaryColor,
                ),
              )
            ],
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addSPDialog(context),
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
