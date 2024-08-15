import 'package:comapp/common/styles/spacing_styles.dart';
import 'package:comapp/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:comapp/common/widgets/widgets_login_signup/social_buttons.dart';
import 'package:comapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:comapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:comapp/utils/constants/colors.dart';
import 'package:comapp/utils/constants/image_strings.dart';
import 'package:comapp/utils/constants/sizes.dart';
import 'package:comapp/utils/constants/text_strings.dart';
import 'package:comapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo and Title and Sub title
              TLoginHeader(),

              // Form
              TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
