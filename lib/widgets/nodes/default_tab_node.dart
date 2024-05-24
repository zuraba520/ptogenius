import 'package:flutter/material.dart';
import 'package:ptogenius/widgets/default_app_bar.dart';
import 'package:ptogenius/widgets/integration_info.dart';
import 'package:ptogenius/models/project.dart';
import 'package:ptogenius/widgets/user_info.dart';
import 'package:ptogenius/widgets/lists/project_list.dart';
import 'package:tab_container/tab_container.dart';
import 'package:ptogenius/enums/business_type.dart';

class DefaultTab extends StatelessWidget {
  const DefaultTab({
    required this.type,
    Key? key,
  }) : super(key: key);
  final BusinessType type;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const DefaultAppBar(),
        body: ListView(
          children: [
            const IntegrationInfo(),
            TabContainer(tabs: const [],),
            const TabBar(
              indicatorColor: Colors.blue,
              indicatorWeight: 4.0,
              labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
              tabs: [
                Tab(
                  child: Text(
                    'Small Business',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Medium Business',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Enterprise',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45.0),
            const UserInfo(),
            const SizedBox(height: 15.0),
            ProjectListWidget(
              projects: Project.projectsData,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
