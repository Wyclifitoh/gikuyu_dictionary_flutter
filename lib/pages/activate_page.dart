import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gikuyu_dictionary/pages/dashboard_page.dart';
import 'package:gikuyu_dictionary/widgets/appbar_widget.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/helper.dart';
import '../widgets/button_widget.dart';
import '../widgets/header_container.dart';
import '../widgets/vertical_spacer.dart';

class ActivatePage extends StatefulWidget {
  const ActivatePage({Key? key}) : super(key: key);

  @override
  _ActivatePageState createState() => _ActivatePageState();
}

class _ActivatePageState extends State<ActivatePage> {
  String? phone_number;
  TextEditingController phone = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getPrefData();
  }

  _getPrefData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      phone_number = prefs.getString('phone_number');
    });
  }

  Future initiateStkPush() async {
    // show the loading dialog
    showDialog(
        // The user CANNOT close this dialog  by pressing outsite it
        barrierDismissible: true,
        context: context,
        builder: (_) {
          return Dialog(
            // The background color
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // The loading indicator
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 15,
                  ),
                  // Some text
                  Text('Loading...')
                ],
              ),
            ),
          );
        });
    var url = "https://gikuyugituure.com/mobiapp/stk-push.php";
    var response = await http.post(Uri.parse(url), body: {
      "phone_number": phone.text,
    });
    debugPrint("DFDDDDDDDDDDDDDD "+response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data["status"] == 'success') {
        Helper.saveUserData('phone_number', phone.text);
        // Fluttertoast.showToast(
        //     msg: '',
        //     toastLength: Toast.LENGTH_LONG,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.green,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        // Close the dialog programmatically
        Navigator.of(context).pop();
      } else {
        Navigator.of(context).pop();
        var decodeSucceeded = false;
        try {
         // var decodedJSON = json.decode(data["data"]) as Map<String, dynamic>;
          decodeSucceeded = true;
          Fluttertoast.showToast(
              msg: "There is a pending request for the phone number",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        } on FormatException catch (e) {
          Fluttertoast.showToast(
              msg: data["data"],
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      }
    } else {
      Navigator.of(context).pop();
      Fluttertoast.showToast(
          msg: 'Something Went wrong try again later',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future confirmPayment() async {
    if (phone_number?.isEmpty ?? true) {
      if (phone.text.isEmpty) {
        Fluttertoast.showToast(
            msg:
                "We have receive Ksh. 0 Please Pay Ksh. 499 to complete the payment.",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        // show the loading dialog
        showDialog(
            // The user CANNOT close this dialog  by pressing outsite it
            barrierDismissible: true,
            context: context,
            builder: (_) {
              return Dialog(
                // The background color
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      // The loading indicator
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 15,
                      ),
                      // Some text
                      Text('Loading...')
                    ],
                  ),
                ),
              );
            });
        var url =
            "https://gikuyugituure.com/mobiapp/confirm-payment.php";
        var response = await http.post(Uri.parse(url), body: {
          "phone_number": phone.text,
        });
        print(response.body);
        if (response.statusCode == 200) {
          var data = json.decode(response.body);
          if (data["status"] == 'success') {
            Helper.saveUserData('payment_status', 'confirmed');
            Fluttertoast.showToast(
                msg: data["message"],
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0);
            // Close the dialog programmatically
            Navigator.of(context).pop();
            await Future.delayed(const Duration(seconds: 1));
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(),
              ),
            );
          } else {
            Navigator.of(context).pop();
            Fluttertoast.showToast(
                msg: data["message"],
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            // Close the dialog programmatically
          }
        } else {
          Navigator.of(context).pop();
          Fluttertoast.showToast(
              msg: 'Something Went wrong try again late',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      }
    } else {
      // show the loading dialog
      showDialog(
          // The user CANNOT close this dialog  by pressing outsite it
          barrierDismissible: true,
          context: context,
          builder: (_) {
            return Dialog(
              // The background color
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    // The loading indicator
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 15,
                    ),
                    // Some text
                    Text('Loading...')
                  ],
                ),
              ),
            );
          });
      var url =
          "https://gikuyugituure.com/mobiapp/confirm-payment.php";
      var response = await http.post(Uri.parse(url), body: {
        "phone_number": phone_number,
      });

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data["status"] == 'success') {
          Helper.saveUserData('payment_status', 'confirmed');
          Fluttertoast.showToast(
              msg: data["message"],
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0);
          // Close the dialog programmatically
          Navigator.of(context).pop();
          await Future.delayed(const Duration(seconds: 1));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DashBoard(),
            ),
          );
        } else {
          Navigator.of(context).pop();
          Fluttertoast.showToast(
              msg: data["message"],
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          // Close the dialog programmatically

        }
      } else {
        Navigator.of(context).pop();
        Fluttertoast.showToast(
            msg: 'Something Went wrong try again late',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    //  SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: buildAppBar(context, 'Payment'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(
                15,
              ),
              height: 102.h,
              width: 375.w,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.1),
                    width: 1.h,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.of(context).pop();
                  //   },
                  //   child: SizedBox(
                  //     width: 24.w,
                  //     height: 24.h,
                  //     child: FittedBox(
                  //       child: SvgPicture.asset(
                  //         'assets/images/back_icon.svg',
                  //       ),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                  Text(
                    "Payment",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
            ),
            const VerticalSpacer(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "To continue using Gĩkũyũ Dictionary Kindly Pay a one-off fee of Ksh. 499 \n\nIf you previously paid the activation fee, just enter your safaricom number you paid with and click confirm.\n\nTo Pay your activation fee (KES 499) via MPESA. Follow the Steps Below.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //+254 708 212312
                  //1. Enter your Safaricom Mobile Phone Number to pay with below and click Pay\n\n2. When prompted, enter MPESA PIN\n\n3.Click 'Confirm' Button once you receive MPESA confirmation
                  const VerticalSpacer(height: 7),
                  Text(
                    "Go to Mpesa - Send Money\n\nEnter phone 0708212312\n\nEnter Amount Ksh. 499\n\nEnter your Mpesa pin and send\n\nWait for few minutes as we confirm your payment then enter the number you paid with and click confirm ",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const VerticalSpacer(height: 40),
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFF1A1A1A),
                    ),
                  ),
                  const VerticalSpacer(height: 8),
                  TextField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    cursorColor: Theme.of(context).colorScheme.primary,
                    decoration: InputDecoration(
                      hintText: "2547XXXXXXXX",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF1A1A1A).withOpacity(0.2494),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: const Color(0xFF1A1A1A).withOpacity(0.1),
                          width: 1.sp,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.w),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const VerticalSpacer(height: 8),
            Center(
              child: InkWell(
                onTap: () {
                  // initiateStkPush();
                  confirmPayment();
                },
                child: Container(
                  height: 49.h,
                  width: 345.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.w),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Confirm & Continue",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 81.h,
        width: 375.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.w),
            topRight: Radius.circular(20.w),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              offset: const Offset(0, -10),
              blurRadius: 10,
            ),
          ],
        ),
        // child: Center(
        //   child: InkWell(
        //     onTap: () {
        //       confirmPayment();
        //     },
        //     child: Container(
        //       height: 49.h,
        //       width: 345.w,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(15.w),
        //         color: Theme.of(context).colorScheme.primary,
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             "Confirm",
        //             style: TextStyle(
        //               fontSize: 14.sp,
        //               fontWeight: FontWeight.w500,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
