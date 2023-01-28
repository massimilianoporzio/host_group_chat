import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:host_group_chat/core/presentation/pages/home_page.dart';
import 'conf/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:host_group_chat/core/presentation/theme/style.dart';
import 'package:host_group_chat/routes/on_generate_route.dart';

import 'features/auth/presentation/pages/login_page.dart';

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
          primaryColor: Palette.kToDark,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
                  seedColor: Palette.kToDark, brightness: Brightness.dark)
              .copyWith(primary: Palette.kToDark),
          textTheme: GoogleFonts.bitterTextTheme()),
      initialRoute: "/",
      onGenerateRoute: OnGenerateRoute.route,
      routes: {
        "/": (context) {
          // return const ForgotPasswordPage();
          return const HomePage();
        }
      },
    );
  }
}
