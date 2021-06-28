import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "btnsubmit": MessageLookupByLibrary.simpleMessage("أرسل"),
        "lblemail": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "lblname": MessageLookupByLibrary.simpleMessage("الاسم"),
        "lblphone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "locale": MessageLookupByLibrary.simpleMessage("ar"),
        "lbltitle": MessageLookupByLibrary.simpleMessage("اتصل بنا"),
        "lblcreatAcount": MessageLookupByLibrary.simpleMessage("انشاء حساب"),
        "lblconfirmPassword":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "lblbookCourse": MessageLookupByLibrary.simpleMessage("المقرر الدراسي"),
        "lblsignIn": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "lblpassword": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "lblsettings": MessageLookupByLibrary.simpleMessage("الاعدادات"),
        "lblchangeLanguage": MessageLookupByLibrary.simpleMessage("تغير للغة"),
        "lblchangePassword":
            MessageLookupByLibrary.simpleMessage("تغير كلمة المرور"),
        "lblsignOut": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "lblprofile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "lblgooglemap": MessageLookupByLibrary.simpleMessage("خرائط جوجل"),
        "lblsearch": MessageLookupByLibrary.simpleMessage("البحث"),
        "chemail": MessageLookupByLibrary.simpleMessage(
            "يرجى كتابة البريد الكتروني بشكل صحيح"),
        "chpassword": MessageLookupByLibrary.simpleMessage(
            "يرجى كتابة كلمة المرور بشكل صحيح"),
        "chconpassword":
            MessageLookupByLibrary.simpleMessage("يرجى تأكد من كلمة المرور"),
        "chphone": MessageLookupByLibrary.simpleMessage(
            "يرجى كتابة رقم الهاتف بشكل الصحيح"),
        "lblteachercourse":
            MessageLookupByLibrary.simpleMessage("دورات المعلم"),
        "lblcheckloginemail": MessageLookupByLibrary.simpleMessage(
            "يرجى كتابة البريد الكتروني وكلمة المرور بشكل الصحيح"),
        "lblsearchschools":
            MessageLookupByLibrary.simpleMessage(" البحث عن المدارس"),
        "lblschools": MessageLookupByLibrary.simpleMessage("  المدارس "),
        "lblcurrentlocation":
            MessageLookupByLibrary.simpleMessage(" الموقع الحالي"),
        "lblyoucanchangelangugejustclickbutton":
            MessageLookupByLibrary.simpleMessage(
                "تستطيع تغير  اللغة بنقر على زر  اللغة "),
      };
}
