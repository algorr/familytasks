import 'package:familytasks/utils/key.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageService extends GetxService {
  late GetStorage _getStorage;

  Future<LocalStorageService> init() async {
    _getStorage = GetStorage();
    await _getStorage.writeIfNull(taskKey, []);
    return this;
  }

  T read<T>(String key){
    return _getStorage.read(key);
  }

  void write(String key, dynamic value) async {
    await _getStorage.writeIfNull(key, value);
  }
}
