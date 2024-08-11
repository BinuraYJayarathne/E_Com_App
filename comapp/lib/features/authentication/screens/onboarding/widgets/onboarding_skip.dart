import 'package:comapp/utils/constants/sizes.dart';
import 'package:comapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defualtSpace,
        child: TextButton(
          onPressed: () {},
          child: const Text('Skip'),
        ));
  }
}
