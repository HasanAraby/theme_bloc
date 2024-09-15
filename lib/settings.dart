import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/core/theme/app_theme.dart';
import 'package:theme_bloc/core/theme/bloc/theme_bloc.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index) {
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme]!.primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.name,
                  style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
                ),
                onTap: () {
                  context
                      .read<ThemeBloc>()
                      .add(ThemeChangedEvent(theme: itemAppTheme));
                },
              ),
            );
          }),
    );
  }
}
