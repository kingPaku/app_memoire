import 'package:flutter/material.dart';
import 'features/welcome/presentation/welcome_page.dart';
import 'features/auth/presentation/login_page.dart';
import 'features/auth/presentation/register_page.dart';
import 'features/patient/presentation/patient_dashboard.dart';
import 'features/professional/presentation/pro_dashboard.dart';
import 'features/patient/presentation/analysis_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeLab securite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) {
          final role = ModalRoute.of(context)?.settings.arguments as String? ?? 'patient';
          return LoginPage(role: role);
        },
        '/register': (context) {
          final role = ModalRoute.of(context)?.settings.arguments as String? ?? 'patient';
          return RegisterPage(role: role);
        },
        '/dashboard_patient': (context) => const PatientDashboard(),
        '/dashboard_pro': (context) => const ProfessionalDashboard(),
        '/analysis_form': (context) => const AnalysisFormPage(),
      },
      initialRoute: '/',
    );
  }
}
