import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gikuyu_dictionary/pages/dashboard_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/helper.dart';
import 'activate_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   Timer(const Duration(milliseconds: 4000), () {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => const ActivatePage()));
  //   });
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    _voidSplash();
  }

  _voidSplash() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Helper.saveUserData('payment_status', 'confirmed');
    var data = sharedPreferences.getString('payment_status');
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
            data == null ? const ActivatePage() : DashBoard(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Color.fromARGB(255, 207, 83, 38)
        decoration: const BoxDecoration(color: Colors.black
            // gradient: LinearGradient(
            //   colors: [orangeColors, orangeLightColors],
            //   end: Alignment.bottomCenter,
            //   begin: Alignment.topCenter,
            // ),
            ),
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: Image.asset("assets/images/newlogo.jpeg"),
          ),
        ),
      ),
    );
  }
}
