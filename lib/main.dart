import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modular_localization/app/l10n/app_l10n.dart';
import 'package:modular_localization/app/l10n/cubit/app_l10n_cubit.dart';
import 'package:modular_localization/app/theme/app_theme.dart';
import 'package:modular_localization/feature/navbar/view/navbar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppL10nCubit(),
      child: BlocBuilder<AppL10nCubit, AppL10nState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Modular Localization',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.appTheme,
            locale: state.currentLocale,
            localizationsDelegates: AppL10n.localizationsDelegates,
            supportedLocales: AppL10n.supportedLocales,
            home: const NavbarView(),
          );
        },
      ),
    );
  }
}
