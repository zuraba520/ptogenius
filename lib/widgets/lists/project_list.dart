import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ptogenius/models/project.dart';
import 'package:ptogenius/providers/config_provider.dart';
import 'package:ptogenius/widgets/nodes/project.dart';

class ProjectListWidget extends StatelessWidget {
  const ProjectListWidget({
    required this.projects,
    Key? key,
  }) : super(key: key);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(builder: (_, config, __) {
      final currentBusinessList = config.currentBusinessList;
      return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: projects.length,
        itemBuilder: (_, idx) {
          final project = projects[idx];
          final isActive = currentBusinessList.contains(project.id);
          return ProjectNode(
            project: project,
            active: isActive,
            onClick: () => config.setProjectList(project.id),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 15),
      );
    });
  }
}
