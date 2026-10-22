import 'package:finora/core/theme/app_colors.dart';
import 'package:finora/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isFacebook;

  const SocialMediaButton({super.key, required this.onPressed, this.isFacebook = false});

  ({String asset, String label}) get _provider => isFacebook
      ? (asset: 'assets/images/facebook_logo.png', label: 'Continue with Facebook')
      : (asset: 'assets/images/google_logo.jpg', label: 'Continue with Google');

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.surface,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
        side: const BorderSide(color: AppColors.textFieldBorder, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        fixedSize: Size(double.infinity, 60),
      ),
      child: Center(
        child: SizedBox(
          width: 240,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                _provider.asset,
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 20),
              Text(
               _provider.label,
                style: AppTextStyles.labelExtraLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
