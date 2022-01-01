import 'package:edutech/Config/custom_router.dart';
import 'package:edutech/Screens/screens.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edu Tech',
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      //home: OnBoarding(),
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: '/Splash',
    );
  }
}

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);
  static const String routeName = '/RouteScreen';

  static Route route() {
    return MaterialPageRoute(builder: (_) => RouteScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LearnerNavScreen.routeName);
                },
                child: Text("Learner")),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(InstructorNavScreen.routeName);
                },
                child: Text("Instrutor")),
          ],
        ),
      ),
    );
  }
}
