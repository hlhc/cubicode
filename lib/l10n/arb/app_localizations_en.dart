// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get invalidEmail => 'Invalid Email';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get learnLabel => 'Learn';

  @override
  String get playgroundLabel => 'Playground';

  @override
  String get profileLabel => 'Profile';

  @override
  String get guestProfileDisplayName => 'Guest';

  @override
  String get logOutButtonLabel => 'Logout';

  @override
  String get noTopicsMessage => 'No topics found';

  @override
  String get getTopicsFailureMessage => 'Failed to get topics to learn';

  @override
  String get galleryLabel => 'Gallery';

  @override
  String get delete => 'Delete';

  @override
  String get exploreLabel => 'Explore';

  @override
  String get noGalleryMessage =>
      'No code found in the gallery. Create your first program.';

  @override
  String get noExploreMessage =>
      'No one have shared their code. Be the first one to share.';

  @override
  String get getGalleryFailureMessage => 'Failed to get topics to learn';

  @override
  String get getExploreFailureMessage => 'Failed to get topics to learn';
}
