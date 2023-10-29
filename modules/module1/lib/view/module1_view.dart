import 'package:flutter/material.dart';
import 'package:module1/l10n/gen/module_1_localizations.dart';

class Module1View extends StatelessWidget {
  const Module1View({required this.actions, super.key});

  final Widget actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [actions],
        title: Text(Module1Localizations.of(context).welcome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            Module1Localizations.of(context).description,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
