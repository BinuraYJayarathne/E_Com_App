import 'package:comapp/features/authentication/screens/signup_widgets/widgets/signup_termsConditions.dart';
import 'package:comapp/utils/constants/colors.dart';
import 'package:comapp/utils/constants/sizes.dart';
import 'package:comapp/utils/constants/text_strings.dart';
import 'package:comapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        // First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// Phone number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        /// password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Terms&Condtions checkbox
        const TSignupTermsConditions(),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// Sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
