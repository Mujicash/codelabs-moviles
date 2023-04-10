import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import 'app.dart';
import 'firebase_options.dart';

// TODO(codelab user): Get API key
const clientId = '99676277612-g0odfjatj59v3k8ji81kdmom0kvdkqiv.apps.googleusercontent.com';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterFireUIAuth.configureProviders([
    const EmailProviderConfiguration(),
    const GoogleProviderConfiguration(clientId: clientId),
  ]);

  runApp(const MyApp());
}
