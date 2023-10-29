import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modular_localization/app/l10n/app_l10n.dart';
import 'package:modular_localization/app/l10n/cubit/app_l10n_cubit.dart';

class LeadingItems extends StatelessWidget {
  const LeadingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton<Locale>(
        value: context.watch<AppL10nCubit>().state.currentLocale,
        onChanged: (value) => context.read<AppL10nCubit>().changeLocale(value ?? AppL10n.enUS),
        items: [
          DropdownMenuItem(
            value: AppL10n.enUS,
            child: Text(AppL10n.enUS.languageCode.toUpperCase()),
          ),
          DropdownMenuItem(
            value: AppL10n.trTR,
            child: Text(AppL10n.trTR.languageCode.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
