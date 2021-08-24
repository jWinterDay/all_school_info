import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrettyPrinter(methodCount: 0, printTime: true),
  level: Level.error,
);
