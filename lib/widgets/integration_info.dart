import 'package:flutter/material.dart';
import 'package:ptogenius/theme/app_theme.dart';

class IntegrationInfo extends StatelessWidget {
  const IntegrationInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Easy Turn-Key Integration',
            style: AppTheme.thirtySixBold,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          Text(
            'Increase job satisfaction, improve engagement, '
            'decrease burnout and lower payroll liability by reimagining '
            'what employees can do with their PTO.',
            style: AppTheme.sixteen,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
