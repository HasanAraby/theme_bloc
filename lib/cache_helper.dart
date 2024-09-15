import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences shPrefs;
Future<void> intiateCache() async {
  shPrefs = await SharedPreferences.getInstance();
}
