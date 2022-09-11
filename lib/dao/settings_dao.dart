import 'package:floor/floor.dart';
import 'package:isha/models/settings.dart';

@dao
abstract class SettingsDao {
  @Query("SELECT * FROM settings LIMIT 1")
  Future<Settings> getSettings();

  @insert
  Future createSettings(Settings settings);

  @update
  Future updateSettings(Settings settings);
}
