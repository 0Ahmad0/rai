import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rai_app/rai_app.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/utils/const_value_manager.dart';
import 'translations/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Gemini.init(apiKey: ConstValueManager.geminiApi);

  await EasyLocalization.ensureInitialized();
  /// To Fix Bug In Text Showing In Release Mode
  await ScreenUtil.ensureScreenSize();

  runApp(
    EasyLocalization(
      child: RaiApp(
        appRouter: AppRouter(),
      ),
      fallbackLocale: Locale(ConstValueManager.arLanguageCode),
      assetLoader: CodegenLoader(),
      supportedLocales: [
        Locale(ConstValueManager.arLanguageCode),
        Locale(ConstValueManager.enLanguageCode),
      ],
      path: 'assets/translations',
    ),
  );
}
