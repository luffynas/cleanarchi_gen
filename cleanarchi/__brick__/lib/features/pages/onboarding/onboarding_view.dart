import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:{{name.snakeCase()}}/features/controllers/main_controller.dart';
import 'package:{{name.snakeCase()}}/features/pages/onboarding/onboarding_item.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key, required this.onBoardingList});
  final List<OnboardingItem> onBoardingList;

  @override
  State<OnboardingView> createState() => _WalkthroughStateView();
}

class _WalkthroughStateView extends State<OnboardingView> {
  final PageController _controller = PageController();

  int currentPage = 0;
  bool lastPage = false;

  @override
  void initState() {
    super.initState();
  }

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.onBoardingList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Color(0xFF007F80),
    //   ),
    // );

    return Scaffold(
      backgroundColor: AppColors.mBlue,
      body: Stack(
        children: [
          PageView(
            onPageChanged: _onPageChanged,
            controller: _controller,
            children: widget.onBoardingList,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 72,
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _indicator(),
                  TextButton(
                    child: Text(
                      lastPage ? 'Ayo Mulai' : 'Berikutnya',
                      style: AppTypography.smallMedium.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (lastPage) {
                        Get.find<MainController>().exitOnboarding();
                      } else {
                        _controller.jumpToPage(currentPage + 1);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator() {
    return DotsIndicator(
      dotsCount: widget.onBoardingList.length,
      position: currentPage,
      decorator: DotsDecorator(
        activeSize: const Size(18, 9),
        activeColor: Colors.white,
        color: const Color(0xFFD8D8D8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
