import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:r7al/providers/AuthenticationService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:r7al/screens/HomeScreenM.dart';
import 'package:r7al/screens/homepage/Home.dart';
import 'package:r7al/screens/homepage/Homepage1.dart';
import 'package:r7al/screens/homepage/Item1.dart';
import 'package:r7al/screens/signupscreens/homescreens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // ✅ تأكد من تهيئة Firebase

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider<User?>(
          create: (context) => context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
