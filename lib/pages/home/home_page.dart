import 'package:flutter/material.dart';
import 'package:ptogenius/widgets/default_app_bar.dart';
import 'package:ptogenius/widgets/nodes/project.dart';

import '../../models/project.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const DefaultAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15.0),
                const Center(
                  child: Text(
                    'Easy Turn-Key',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Integration',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Increase job satisfaction, improve engagement, decrease burnout and lower payroll liability by reimagining what employees can do with their PTO.',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                // Center TabBar
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
                const SizedBox(height: 65.0),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    // color: Colors.cyan, //container inside color,but it is not same color witch i want
                    color: Colors.purpleAccent.withOpacity(0.07),
                    border: Border.all(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lauren Robson',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'HR Director',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 18.0),
                      Text(
                        '"I want to lower PTO liability and keep my employees happy. I want to lower PTO liability."',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                ProjectNode(
                  project: Project(
                    title: 'Rippling',
                    description: 'Salary Management',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
