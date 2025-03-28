// Package imports:
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    errorMethodCount: 5,
    lineLength: 140,
    dateTimeFormat: DateTimeFormat.dateAndTime
  ),
);