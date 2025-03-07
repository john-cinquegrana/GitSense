import 'package:logger/logger.dart';

/// This is the logger that should be used to print anything out
final Logger logger = Logger(
  printer: PrettyPrinter(
    errorMethodCount: 5,
    lineLength: 100,
    excludeBox: <Level, bool>{Level.info: true, Level.debug: true},
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);
