import 'dart:developer';

import 'package:day_15/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Otpscreen extends StatefulWidget {
  String verificationid; // through this line it will stored otpfrom firebase
  Otpscreen({super.key, required this.verificationid});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  TextEditingController optcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OTP Screen"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: optcontroller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Enter OTP",
                    suffixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  try {
                    PhoneAuthCredential credential =
                        await PhoneAuthProvider.credential(
                            verificationId: widget.verificationid,
                            smsCode: optcontroller.text.toString());
                    FirebaseAuth.instance
                        .signInWithCredential(credential)
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                          Homescreen()));
                    });
                  } catch (ex) {
                    log(ex.toString());
                  }
                },
                child: Text("Verify OTP")),
          ],
        ));
  }
}
