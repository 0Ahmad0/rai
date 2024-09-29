import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '/core/utils/style_manager.dart';

import '../../../translations/locale_keys.g.dart';

class PickerDialog extends StatelessWidget {
  const PickerDialog(
      {super.key, required this.galleryPicker, required this.cameraPicker});

  final VoidCallback galleryPicker;
  final VoidCallback cameraPicker;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: cameraPicker,
          leading: Icon(Icons.camera_alt_outlined),
          title: Text(tr(LocaleKeys.home_pick_from_camera_text)),
        ),
        ListTile(
          onTap: galleryPicker,
          leading: Icon(Icons.image_outlined),
          title: Text(tr(LocaleKeys.home_pick_from_gallery_text)),
        ),
      ],
    );
  }
}
