import 'package:christmas_2024/src/utils/constants/date_values.dart';
import 'package:christmas_2024/src/utils/extensions/build_context_extensions.dart';
import 'package:christmas_2024/src/widgets/home_screen_widgets/countdown_progress_santa.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildDateText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Start',
              style: TextStyle(
                fontSize: context.textTheme.bodySmall!.fontSize,
              ),
            ),
            Text(
              DateValues.startDate.toString().substring(0, 10),
              style: TextStyle(
                fontSize: context.textTheme.bodySmall!.fontSize,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'End',
              style: TextStyle(
                fontSize: context.textTheme.bodySmall!.fontSize,
              ),
            ),
            Text(
              DateValues.targetDate.toString().substring(0, 10),
              style: TextStyle(
                fontSize: context.textTheme.bodySmall!.fontSize,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const CountdownProgressSanta(),
          const SizedBox(height: 4),
          _buildDateText(),
        ],
      ),
    );
  }
}
