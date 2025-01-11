import 'package:flutter/material.dart';
import 'package:mps_app/common/constants/app_colors.dart';
import 'package:mps_app/common/constants/app_text_style.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: Container(
                color: Color(0xFFFEF7FF),
                child: Image.asset('assets/images/man.png')
              ),           
            ),
            Text(
              'texto aqui',
              style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenlightTwo
              )
            ),
            Text(
              'outro aqui',
              style: AppTextStyles.mediumText.copyWith(
              color: AppColors.greenlightTwo
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
            Text(
              'Já possui uma conta?',
              style: AppTextStyles.smallText.copyWith(
              color: AppColors.grey
              )
            ),
            const SizedBox(height: 10.0)
          ],
        ),
      ),
    );
  }
}