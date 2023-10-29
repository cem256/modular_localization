import 'package:flutter/material.dart';
import 'package:module2/l10n/gen/module_2_localizations.dart';

class Module2View extends StatelessWidget {
  const Module2View({required this.actions, super.key});

  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [actions],
        title: Text(Module2Localizations.of(context).welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            Module2Localizations.of(context).description,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
