import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final Color income;
  final Color expense;
  final Color warning;
  final Color chartBackground;
  final List<Color> chartColors;

  const AppThemeExtension({
    required this.income,
    required this.expense,
    required this.warning,
    required this.chartBackground,
    required this.chartColors,
  });

  @override
  AppThemeExtension copyWith({
    Color? income,
    Color? expense,
    Color? warning,
    Color? chartBackground,
    List<Color>? chartColors,
  }) {
    return AppThemeExtension(
      income: income ?? this.income,
      expense: expense ?? this.expense,
      warning: warning ?? this.warning,
      chartBackground: chartBackground ?? this.chartBackground,
      chartColors: chartColors ?? this.chartColors,
    );
  }

  @override
  AppThemeExtension lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(
      income: Color.lerp(income, other.income, t)!,
      expense: Color.lerp(expense, other.expense, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      chartBackground: Color.lerp(chartBackground, other.chartBackground, t)!,
      chartColors: List.generate(
        chartColors.length,
        (index) => Color.lerp(chartColors[index], other.chartColors[index], t)!,
      ),
    );
  }
}
