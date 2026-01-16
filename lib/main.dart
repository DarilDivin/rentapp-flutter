import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentapp/injection_container.dart';
import 'package:rentapp/presentation/bloc/car_bloc.dart';
import 'package:rentapp/presentation/bloc/car_event.dart';
import 'package:rentapp/presentation/pages/onboarding_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  initInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(FetchCarsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: const Color(0xFFD68B44)),
          useMaterial3: true,
        ),
        home: OnBoardingPage(),
      ),
    );
  }
}
