import 'package:finora/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'core/theme/app_dimensions.dart';
import 'core/theme/app_text_styles.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/app_theme_extension.dart';

void main() {
  runApp(const FinoraApp());
}

class FinoraApp extends StatelessWidget {
  const FinoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finora',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}

class ThemePreviewScreen extends StatelessWidget {
  const ThemePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your money, your control.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppDimensions.spacing24),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(
                  AppDimensions.spacing20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: AppDimensions.spacing8),
                    Text(
                      '\$5,420.00',
                      style: AppTextStyles.balance.copyWith(
                        color: colors.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Row(
              children: [
                Icon(
                  Icons.trending_up,
                  color: Theme.of(context)
                      .extension<AppThemeExtension>()!
                      .income,
                ),
                const SizedBox(width: AppDimensions.spacing8),
                const Text('Income'),
                const Spacer(),
                const Text('+ \$2,500.00'),
              ],
            ),
            const SizedBox(height: AppDimensions.spacing12),
            Row(
              children: [
                Icon(
                  Icons.trending_down,
                  color: Theme.of(context)
                      .extension<AppThemeExtension>()!
                      .expense,
                ),
                const SizedBox(width: AppDimensions.spacing8),
                const Text('Expenses'),
                const Spacer(),
                const Text('- \$850.00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}