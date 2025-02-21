import 'package:logger/logger.dart';

/// This is the logger that should be used to print anything out
final logger = Logger(
  printer: PrettyPrinter(
    errorMethodCount: 5,
    lineLength: 100,
    colors: true,
    printEmojis: true,
    dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
  ),
);
