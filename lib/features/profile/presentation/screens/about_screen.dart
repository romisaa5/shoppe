import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_colors/light_app_colors.dart';
import 'package:shoppe/core/theme/app_texts/app_text_styles.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const List<Map<String, String>> _team = [
    {'name': 'Romisaa Fadel', 'initials': 'RF'},
    {'name': 'Omar Ashraf', 'initials': 'OA'},
    {'name': 'Omar Ayman', 'initials': 'OA'},
    {'name': 'Esraa Eltohamy', 'initials': 'ET'},
    {'name': 'Mohamed Soultan', 'initials': 'MS'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightAppColors.background,
      body: Column(
        children: [
          _buildHeader(() => Navigator.pop(context)),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTagline(),
                  SizedBox(height: 20.h),
                  _buildSectionTitle('Our Team'),
                  SizedBox(height: 14.h),
                  ..._team.map((member) => _buildTeamCard(member)),
                  SizedBox(height: 20.h),
                  _buildFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(void Function() onTap) {
    return Container(
      color: LightAppColors.primary700,
      child: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 36.w,
                      height: 36.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: .15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'About',
                    style: AppTextStyles.font16SemiBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 28.h),
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      'assets/master/icon.png',
                      height: 70.w,
                      width: 70.w,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'E-Commerce App',
                  style: AppTextStyles.font14Regular.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .15),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: .25),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    'Version 1.0.0',
                    style: AppTextStyles.font12SemiBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 24.h,
            decoration: BoxDecoration(
              color: LightAppColors.background,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagline() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: LightAppColors.primary100,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        'A modern shopping experience\n discover, explore, and shop with ease.',
        textAlign: TextAlign.center,
        style: AppTextStyles.font14SemiBold.copyWith(
          color: LightAppColors.primary800,
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Container(
          width: 3.w,
          height: 18.h,
          decoration: BoxDecoration(
            color: LightAppColors.primary700,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: AppTextStyles.font16Bold.copyWith(
            color: LightAppColors.grey900,
          ),
        ),
      ],
    );
  }

  Widget _buildTeamCard(Map<String, String> member) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: LightAppColors.primary50,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: LightAppColors.primary200, width: 0.5),
      ),
      child: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.w,
            decoration: BoxDecoration(
              color: LightAppColors.primary200,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Text(
                member['initials']!,
                style: AppTextStyles.font14Bold.copyWith(
                  color: LightAppColors.primary800,
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              member['name']!,
              style: AppTextStyles.font14SemiBold.copyWith(
                color: LightAppColors.grey900,
              ),
            ),
          ),
          Container(
            width: 28.w,
            height: 28.w,
            decoration: BoxDecoration(
              color: LightAppColors.primary200,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.chevron_right,
              color: LightAppColors.primary700,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
      child: Center(
        child: RichText(
          text: TextSpan(
            style: AppTextStyles.font12Regular.copyWith(
              color: LightAppColors.grey500,
            ),
            children: [
              const TextSpan(text: 'Made with '),
              const TextSpan(text: ' · LAZA Team · 2025'),
            ],
          ),
        ),
      ),
    );
  }
}
