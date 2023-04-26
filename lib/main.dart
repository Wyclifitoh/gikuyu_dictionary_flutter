import 'package:flutter/material.dart';
import 'package:gikuyu_dictionary/pages/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          title: 'Yatta Tenant',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.brown,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const SplashPage(),
    );
  }
}
