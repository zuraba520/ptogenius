class Project {
  Project({
    required this.id,
    required this.title,
    required this.description,
    this.active = false,
  });

  final int id;
  final String title;
  final String description;
  bool active;

  String get photo => 'assets/svg/${title.toLowerCase()}.svg';

  static List<Project> projectsData = [
    Project(
      id: 1,
      title: 'Sapling',
      description: 'HR Management',
    ),
    Project(
      id: 2,
      title: 'Rippling',
      description: 'Salary Management',
    ),
    Project(
      id: 3,
      title: 'Workday',
      description: 'Salary Management',
    ),
    Project(
      id: 4,
      title: 'Zenefits',
      description: 'HR Management',
    ),
    Project(
      id: 5,
      title: 'Expensify',
      description: 'HR Management',
    ),
  ];
}
