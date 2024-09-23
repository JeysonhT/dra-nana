import 'package:synchronized/synchronized.dart';

class Idgenerator {
  int _idValue;
  final _lock = Lock();

  Idgenerator([this._idValue = 1]);

  Future<int> idGenerator() async {
    return await _lock.synchronized(() {
      _idValue++;
      return _idValue;
    });
  }

  Future<int> getLastId() async {
    return await _lock.synchronized(() => _idValue);
  }
}
