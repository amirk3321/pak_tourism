import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pak_tourism/screens/home_screen.dart';
import 'package:pak_tourism/screens/pages/home_page.dart';
import 'package:pak_tourism/screens/pages/login.dart';

import 'cubit/auth/auth_cubit.dart';
import 'cubit/credential/credential_cubit.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await FirebaseAdMob.instance.initialize(appId: adMobAndroidAppID);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => AuthCubit()..appStarted(),
        ),
        BlocProvider<CredentialCubit>(
          create: (_) => CredentialCubit(),
        ),
      ],
      child: MaterialApp(
        title: "Pakistan Tourism",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/',
        routes: {
          "/": (context) {
            return BlocBuilder<AuthCubit, AuthState>(
              builder: (context, authState) {
                if (authState is Authenticated) {

                  return HomeScreen();
                } else
                  return LoginScreen();
              },
            );
          }
        },
      ),
    );
  }
}
