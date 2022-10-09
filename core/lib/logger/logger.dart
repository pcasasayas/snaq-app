import 'package:logger/logger.dart';

class MyLogger {
  static Logger? logger;

  static Logger getLogger() {
    logger ??= Logger(
      filter: null, // Use the default LogFilter (-> only log in debug mode)
      printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
      output: null, // Use the default LogOutput (-> send everything to console)
    );
    return logger!;
  }
  static void v({String tag = '', String? msg}) {
    getLogger().v('$tag $msg');
  }

  static void d({String tag = '', String? msg}) {
    getLogger().d('$tag $msg');
  }

  static void i({String tag = '', String? msg}) {
    getLogger().d('$tag $msg');
  }

  static void w({String tag = '', String? msg}) {
    getLogger().w('$tag $msg');
  }

  static void e({String tag = '', String? msg, dynamic error}) {
    getLogger().e('$tag $msg', error.toString());
  }

  static void wtf({String tag = '', String? msg, dynamic error}) {
    getLogger().e('$tag $msg', error.toString());
  }
}