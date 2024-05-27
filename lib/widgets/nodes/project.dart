import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptogenius/models/project.dart';
import 'package:ptogenius/theme/app_theme.dart';

class ProjectNode extends StatelessWidget {
  const ProjectNode({
    required this.project,
    required this.active,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final Project project;
  final bool active;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white54.withOpacity(0.07),
        border: Border.all(
          color: active ? AppTheme.mediumPurple : AppTheme.gray,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: SvgPicture.asset(
                  project.photo,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    style: AppTheme.eighteenBold,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    project.description,
                    style: AppTheme.sixteen,
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: onClick,
            child: Icon(
              active ? Icons.toggle_on_sharp : Icons.toggle_off_outlined,
              size: 30.0,
              color: active ? AppTheme.mediumPurple : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
