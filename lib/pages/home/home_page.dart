import 'package:flutter/material.dart';
import 'package:ptogenius/widgets/default_app_bar.dart';
import 'package:ptogenius/widgets/integration_info.dart';
import 'package:ptogenius/models/project.dart';
import 'package:ptogenius/widgets/user_info.dart';
import 'package:ptogenius/widgets/lists/project_list.dart';
import 'package:ptogenius/widgets/default_tab_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: ListView(
        children: [
          const IntegrationInfo(),
          const TabsWidget(),
          const SizedBox(height: 45.0),
          const UserInfo(),
          const SizedBox(height: 15.0),
          ProjectListWidget(
            projects: Project.projectsData,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
