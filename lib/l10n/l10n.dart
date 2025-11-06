import 'package:cubicode/l10n/arb/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:cubicode/l10n/arb/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
