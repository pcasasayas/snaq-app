import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class IsarDi {
  @lazySingleton
  Isar get isar => Isar.openSync([]);
}