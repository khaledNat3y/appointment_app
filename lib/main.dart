import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DocApp(appRouter: AppRouter(),));
}

