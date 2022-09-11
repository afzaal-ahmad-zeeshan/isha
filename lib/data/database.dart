import 'package:floor/floor.dart';
import 'package:isha/dao/settings_dao.dart';

abstract class AppDatabase extends FloorDatabase {
  SettingsDao get settingsDao;
}
