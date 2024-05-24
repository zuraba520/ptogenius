import 'package:flutter/material.dart';
import 'package:ptogenius/pages/home/home_page.dart';
import 'package:ptogenius/providers/config_provider.dart';
import 'package:ptogenius/theme/app_theme.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConfigProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PTOGenius',
        home: const HomePage(),
        theme: AppTheme.applicationTheme(),
      ),
    );
  }
}
