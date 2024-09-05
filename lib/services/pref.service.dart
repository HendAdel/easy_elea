import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesService {
  static SharedPreferences? preferences;
  static Future<void> initialize() async {
    try {
      preferences = await SharedPreferences.getInstance();
      print('Preferences are setup Successfully.');
    } catch (e) {
      print('Failed to initialize Preferences! : $e');
    }
  }

  static bool get isOnBoardingSeen =>
      preferences!.getBool('isOnBoardingSeen') ?? false;

  static set isOnBoardingSeen(bool value) =>
      preferences!.setBool('isOnBoardingSeen', value);
}
