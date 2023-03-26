import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1_extra/App/MainPage/MainPage.dart';



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 867),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.light()
            ),

            home:MainPage(),
          );
        }
    );
  }
}
