import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Note: On a real device, you need to add your google-services.json
    // For now, we initialize with a placeholder to avoid crashes during build
    await Firebase.initializeApp();
  } catch (e) {
    debugPrint("Firebase not configured yet: $e");
  }
  runApp(const BoutagascoApp());
}

class BoutagascoApp extends StatelessWidget {
  const BoutagascoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boutagasco HR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF0D47A1),
        scaffoldBackgroundColor: const Color(0xFF0A192F),
        textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1),
          secondary: const Color(0xFFFF6D00),
          brightness: Brightness.dark,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
