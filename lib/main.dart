import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jaylin_wedding/core/di/injection.dart';
import 'package:jaylin_wedding/core/router/app_router.dart';
// import 'package:jaylin_wedding/firebase_options.dart';
import 'package:jaylin_wedding/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required for Firebase initialization
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => sl<AuthCubit>()),
        // BlocProvider(create: (_) => sl<OnboardingCubit>()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Nestra',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
