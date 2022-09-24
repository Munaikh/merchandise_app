import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_application/firebase_options.dart';
import 'package:store_application/screens/checkout.dart';
import 'package:store_application/color_schemes.g.dart';
import 'package:store_application/services/service_locator.dart';
import 'package:store_application/services/storage/storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Service Locator should be first
  setupServiceLocator();

  final storageService = serviceLocator<StorageService>();
  await storageService.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store Application',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: GoogleFonts.notoSansArabic().fontFamily,
      ),
      home: CheckoutPage(),
    );
  }
}
