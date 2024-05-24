import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ptogenius/enums/business_type.dart';
import 'package:ptogenius/providers/config_provider.dart';
import 'package:ptogenius/theme/app_theme.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigProvider>(
      builder: (_, config, __) {
        return DefaultTabController(
          length: BusinessType.values.length,
          initialIndex: config.currentBusinessType.index,
          child: TabBar(
            labelColor: AppTheme.mediumPurple,
            labelStyle: AppTheme.fourteenBold,
            dividerColor: AppTheme.mediumPurple,
            indicatorColor: AppTheme.mediumPurple,
            labelPadding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            onTap: (t) => config.setUserBusinessType(BusinessType.values[t]),
            tabs: [
              for (BusinessType bType in BusinessType.values)
                Tab(
                  text: bType.name,
                ),
            ],
          ),
        );
      },
    );
  }
}
