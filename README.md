# Modular Localization
Demonstrates implementing independent localizations for each module.

## Why Use Modular Localization?

When dealing with a large codebase structured into modules, it is common to utilize a single large .arb file for the entire application. However, this approach often leads to modules depending heavily on the application. A more effective strategy involves developing individual localization classes for each module, alongside a shared words class for commonly used terms in the application. By implementing modular localization, we can ensure that each module remains self-contained and can be reused in different projects.

## How it Works?

Each module and the application have their own ".arb" and "l10n.yaml" files. The application's "AppLocalizations" class stores shared terms, while each module, such as 'Module1,' has its own 'Module1Localizations' class for its specific localization needs. The localizationsDelegates property of the MaterialApp widget holds all the localizationsDelegates of the application and its modules.

## Generating Translations
To generate translations, navigate to the root of the project and execute the following script:

```sh
sh scripts/generate_translations.sh
```



