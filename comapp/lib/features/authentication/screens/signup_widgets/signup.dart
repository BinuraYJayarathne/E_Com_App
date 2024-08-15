import 'package:comapp/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:comapp/common/widgets/widgets_login_signup/social_buttons.dart';
import 'package:comapp/features/authentication/screens/signup_widgets/widgets/signup_form.dart';
import 'package:comapp/utils/constants/colors.dart';
import 'package:comapp/utils/constants/sizes.dart';
import 'package:comapp/utils/constants/text_strings.dart';
import 'package:comapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defualtSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Form
              const TSignupForm(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Socail Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
