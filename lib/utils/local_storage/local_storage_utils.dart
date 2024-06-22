import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class VStoreAppLocalStorageHelper {
  static final VStoreAppLocalStorageHelper _instance =
      VStoreAppLocalStorageHelper._internal();

  factory VStoreAppLocalStorageHelper() {
    return _instance;
  }

  VStoreAppLocalStorageHelper._internal();

  final _storage = GetStorage();

  Future<void> saveData<V>(String key, V value) async {
    await _storage.write(key, value);
  }

  V? readData<V>(String key){
    return _storage.read<V>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll()async{
    await _storage.erase();
  }
}
