import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/features/pages/onboarding/onboarding_item.dart';
import 'package:{{name.snakeCase()}}/features/pages/onboarding/onboarding_view.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingView(
      onBoardingList: [
        _welcomeScreen1(),
        _welcomeScreen2(),
        _welcomeScreen3(),
      ],
    );
  }
}

OnboardingItem _welcomeScreen1() {
  return const OnboardingItem(
    title:
        'Ikuti berbagai event dan aktivitas \nkomunitas olahraga di sekitarmu!',
    imageContent: 'assets/images/onboarding/onboarding_1.png',
    position: 0,
  );
}

OnboardingItem _welcomeScreen2() {
  return const OnboardingItem(
    title:
        'Nikmati konten video tutorial sampai update kegiatan olahraga kesukaanmu',
    imageContent: 'assets/images/onboarding/onboarding_2.png',
    position: 1,
  );
}

OnboardingItem _welcomeScreen3() {
  return const OnboardingItem(
    title: 'Kamu bisa bergabung dan mengembangkan komunitasmu sendiri!',
    imageContent: 'assets/images/onboarding/onboarding_3.png',
    position: 2,
  );
}
