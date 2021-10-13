import 'package:logger/logger.dart';

class LoggerUtil extends LogPrinter {

  final String project = "SANTA-MARGARITA";

  @override
  List<String> log(LogEvent event) {
    return [event.message];
  }

}