import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/Services/auth.dart';
import 'package:flutter_mentor_quiz_app_tut/page/form_stripe.dart';
import 'package:flutter_mentor_quiz_app_tut/page/welcome_page.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';

const d_red = const Color(0xFFE9717D);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'sk_test_51KaDdJFdmwj06MTfQvVzrLhp9mVGke3YJL8nwisSYDCjU10ccZZsbXCHMls8QsI3b9pSRCUWTOVTWBWGnq4NdIeq006MOjX8UD';

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Auth()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobSeeker',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
