import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/cache_helper.dart';
import 'package:theme_bloc/core/theme/bloc/theme_bloc.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intiateCache();
  runApp(const MyApp());
  //////
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
/////////pull
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        if (state is LoadedThemeState) {
          return MaterialApp(
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            home: const Home(),
          );
        }
        return const SizedBox();
      }),
    );
  }
}
