import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/core/helpers/extensions.dart';
import '/core/routing/routes.dart';
import '/translations/locale_keys.g.dart';

import '../../helpers/spacing.dart';
import '../../utils/color_manager.dart';
import '../../utils/string_manager.dart';
import '../../utils/style_manager.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_cancel_button.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            trailing: GestureDetector(
              onTap: () => context.pop(),
              child: Icon(
                Icons.close,
              ),
            ),
            title: Text(
              tr(LocaleKeys.home_logout_text),
              style: StyleManager.font16SemiBold(),
            ),
          ),
          verticalSpace(30.h),
          Text(
            textAlign: TextAlign.center,
            tr(LocaleKeys.home_are_you_sure_logout_text),
            style: StyleManager.font16Regular(),
          ),
          verticalSpace(30.h),
          Row(
            children: [
              Flexible(
                  child: AppButton(
                onPressed: () {
                  context.pushAndRemoveUntil(Routes.loginRoute, predicate: (Route<dynamic> route) { return false; });
                },
                text: tr(LocaleKeys.ok),
              )),
              horizontalSpace(12.w),
              Flexible(
                child: AppCancelButton(
                  onPressed: () {
                    context.pop();
                  },
                  text: tr(LocaleKeys.cancel),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
