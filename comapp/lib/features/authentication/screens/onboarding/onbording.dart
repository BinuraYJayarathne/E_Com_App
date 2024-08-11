import 'package:comapp/features/authentication/screens/onboarding/widgets/onboarding_dotnavigation.dart';
import 'package:comapp/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:comapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:comapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:comapp/utils/constants/colors.dart';
import 'package:comapp/utils/constants/image_strings.dart';
import 'package:comapp/utils/constants/sizes.dart';
import 'package:comapp/utils/constants/text_strings.dart';
import 'package:comapp/utils/device/device_utility.dart';
import 'package:comapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal Scrolable Pages
        PageView(
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        /// Skip Button
        const OnBoardingSkip(),

        /// Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        /// Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}
