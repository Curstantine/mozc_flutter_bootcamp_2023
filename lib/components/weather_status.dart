import 'package:flutter/material.dart';

class WeatherStatus extends StatelessWidget {
  final int degree;
  final String status;

  const WeatherStatus({super.key, required this.degree, required this.status});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = theme.textTheme;
    final colors = theme.colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              degree.toString(),
              style: text.displayLarge?.copyWith(
                color: colors.primary,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(status, style: text.labelLarge?.copyWith(color: colors.primary)),
          ],
        ),
        Text("°C", style: text.labelMedium?.copyWith(color: colors.primary)),
      ],
    );
  }
}
