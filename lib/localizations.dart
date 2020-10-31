import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'I10n/messages_all.dart';

class AppLocalizations {
  String get map => null;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  String get title {
    return Intl.message('Contact Us', name: 'title');
  }

  String get chemail {
    return Intl.message('Please Write a Correct Email Address',
        name: 'chemail');
  }

  String get chpassword {
    return Intl.message('Please Write a Correct Password', name: 'chpassword');
  }

  String get chconpassword {
    return Intl.message('Please Check a Confirm  Password',
        name: 'chconpassword');
  }

  String get chphone {
    return Intl.message('Please Write Correct a Phone  Number',
        name: 'chphone');
  }

  String get btnsubmit {
    return Intl.message('Submit', name: 'btnsubmit');
  }

  String get locale {
    return Intl.message('en', name: 'locale');
  }

  String get lblname {
    return Intl.message('Name', name: 'lblname');
  }

  String get lblphone {
    return Intl.message('Phone', name: 'lblphone');
  }

  String get lblemail {
    return Intl.message('Email', name: 'lblemail');
  }

  String get creatAcount {
    return Intl.message('Creat Account', name: 'lblcreatAcount');
  }

  String get confirmPassword {
    return Intl.message('Confirm Password', name: 'lblconfirmPassword');
  }

  String get signIn {
    return Intl.message('Sign In', name: 'lblsignIn');
  }

  String get bookCourse {
    return Intl.message('Book a Course', name: 'lblbookCourse');
  }

  String get password {
    return Intl.message('Password', name: 'lblpassword');
  }

  String get settings {
    return Intl.message('Settings', name: 'lblsettings');
  }

  String get changeLanguage {
    return Intl.message('Change Language', name: 'lblchangeLanguage');
  }

  String get changePassword {
    return Intl.message('Change Password', name: 'lblchangePassword');
  }

  String get signOut {
    return Intl.message('Sign Out', name: 'lblsignOut');
  }

  String get youcanchangelangugejustclickbutton {
    return Intl.message('You Can Change Languge Just Click Button',
        name: 'lblyoucanchangelangugejustclickbutton');
  }

  String get profile {
    return Intl.message('Profile', name: 'lblprofile');
  }

  String get googlemap {
    return Intl.message('Google Map', name: 'lblgooglemap');
  }

  String get currentlocation {
    return Intl.message('Current Location Map', name: 'lblcurrentlocation');
  }

  String get searchSchools {
    return Intl.message('Serarch For Schools', name: 'lblsearchschools');
  }

  String get search {
    return Intl.message('Serarch', name: 'lblsearch');
  }

  String get schools {
    return Intl.message('Schools', name: 'lblschools');
  }

  String get lblmycourse {
    return Intl.message('My Courses', name: 'lblmycourse');
  }

  String get teachercourse {
    return Intl.message('Teacher Courses', name: 'lblteachercourse');
  }

  String get lblcheckloginemail {
    return Intl.message('Please Write Correct Email and Correct Password',
        name: 'lblcheckloginemail');
  }
}

class SpecificLocalizationDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<_DefaultCupertinoLocalizations>(
          _DefaultCupertinoLocalizations(locale));

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class _DefaultCupertinoLocalizations extends DefaultCupertinoLocalizations {
  final Locale locale;

  _DefaultCupertinoLocalizations(this.locale);
}
