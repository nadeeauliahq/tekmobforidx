import 'package:flutter/material.dart';
// Import the generated file
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import './routes/router.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle the error as needed
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: router,
    );
  }
}