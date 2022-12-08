import 'package:flutter/material.dart';

import '../../backend/conest.dart';

const List<String> list = <String>['+20', '+966'];

enum SingingCharacter { email, mobile }

SingingCharacter? loginOption = SingingCharacter.email;

String dropdownValue = list.first;

var email = TextEditingController();
var mobile = TextEditingController();
var password = TextEditingController();

void addSPDialog(BuildContext context) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.white.withOpacity(0.1),
    transitionDuration: const Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          height: 270,
          // color: Colors.black,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'مسوق',
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
                            loginOption = value;
                          },
                          activeColor: primaryColor),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'قائد الفريق',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Transform.scale(
                      scale: 1.4,
                      child: Radio(
                        value: SingingCharacter.mobile,
                        groupValue: loginOption,
                        onChanged: (SingingCharacter? value) {
                          loginOption = value;
                        },
                        activeColor: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    )
                  ],
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
