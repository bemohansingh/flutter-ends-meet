
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Preferences {
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static final Preferences _singleton = Preferences._internal();

  factory Preferences() {
    return _singleton;
  }

  Preferences._internal();

  Future saveString(String key, String value) async {
    await _secureStorage.write(key: key.toLowerCase(), value: value);
  }

  Future saveBool(String key, bool value) async {
    await _secureStorage.write(
        key: key.toLowerCase(), value: value.toString());
  }

  Future<String?> getString(String key) async {
    return await _secureStorage.read(key: key.toLowerCase()) ;
  }

  Future<bool> getBool(String key) async {
    final value = await _secureStorage.read(key: key.toLowerCase());
    return value == 'true';
  }

  Future<int> getInt(String key) async {
    final value = await _secureStorage.read(key: key.toLowerCase());
    var intValue = value ?? '0';
    return int.parse(intValue);
  }

  Future saveInt(String key, int value) async {
    await _secureStorage.write(
        key: key.toLowerCase(), value: value.toString());
  }

  Future remove(String key) async {
    await _secureStorage.delete(key: key.toLowerCase());
  }

  Future removeAll() async {
    await  _secureStorage.deleteAll();
  }
}