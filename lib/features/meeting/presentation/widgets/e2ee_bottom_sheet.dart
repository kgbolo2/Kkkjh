// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:sizer/sizer.dart';

// Project imports:
import 'package:waterbus/features/meeting/presentation/widgets/e2ee_label_line.dart';
import 'package:waterbus/gen/assets.gen.dart';

class E2eeBottomSheet extends StatelessWidget {
  const E2eeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40.sp),
          Image.asset(
            Assets.images.imgLogo.path,
            width: 200.sp,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 16.sp),
          Text(
            'Your messages and meetings\n are private',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12.sp),
          Text(
            'E2E encryption keeps your personal meetings between you and the other people. Not event Waterbus can listen to them. This includes your:',
            textAlign: TextAlign.justify,
            strutStyle: StrutStyle.disabled,
            style: TextStyle(
              fontSize: 12.sp,
              height: 1.4,
            ),
          ),
          SizedBox(height: 20.sp),
          const E2eeLabelLine(
            icon: PhosphorIcons.video_camera,
            label: 'Audio and video calls',
          ),
          SizedBox(height: 8.sp),
          const E2eeLabelLine(
            icon: PhosphorIcons.chats_teardrop,
            label: 'Text messages',
          ),
          SizedBox(height: 40.sp),
        ],
      ),
    );
  }
}
