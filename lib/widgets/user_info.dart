import 'package:flutter/material.dart';
import 'package:ptogenius/theme/app_theme.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 15,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: AppTheme.lightPurple,
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Lauren Robson',
                style: AppTheme.eighteenBold,
              ),
              const SizedBox(height: 8.0),
              Text(
                'HR Director',
                style: AppTheme.sixteen.copyWith(
                  color: AppTheme.darkPurple,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                '"I want to lower PTO liability and keep my employees happy. I want to lower PTO liability."',
                style: AppTheme.sixteen,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          left: width / 2 - 43,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/user.jpg',
              width: 86,
              height: 86,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
