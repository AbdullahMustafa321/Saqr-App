import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app_root.dart';
import 'core/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const AppRoot(),
    ),
  );
}