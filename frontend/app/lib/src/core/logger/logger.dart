import 'package:logger/logger.dart';

Logger getLogger() {
  return Logger(
    printer: PrettyPrinter(
      printEmojis: false,
      errorMethodCount: 5,
      methodCount: 2,
      printTime: true,
      colors: false,
      lineLength: 70,
      excludeBox: {
        Level.verbose: true,
        Level.info: true,
      },
    ),
  );
}
