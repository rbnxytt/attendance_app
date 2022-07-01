import 'package:flutter/material.dart';
import 'package:my_app/channel_controller.dart';
import 'package:my_app/login.dart';
import 'package:my_app/route.dart';
import 'package:my_app/user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChannelController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoute.id,
        routes: {
          MyRoute.id: (context) => const MyRoute(),
          LoginPage.id: (context) => const LoginPage(),
          UserPage.id: (context) => const UserPage(),
        },
      ),
    );
  }
}
