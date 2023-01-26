import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'conf/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:host_group_chat/features/auth/presentation/pages/login_page.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';
import 'package:host_group_chat/routes/on_generate_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: 'MyChat', options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group Chat',
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Palette.kToDark,
          textTheme: GoogleFonts.bitterTextTheme()),
      initialRoute: "/",
      onGenerateRoute: OnGenerateRoute.route,
      routes: {
        "/": (context) {
          // return const ForgotPasswordPage();
          return const LoginPage();
        }
      },
    );
  }
}
