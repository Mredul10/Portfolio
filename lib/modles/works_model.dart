class WorksModel {
  final String imgURL;
  final String postName;
  final String? description;

  WorksModel({
    required this.imgURL,
    required this.postName,
    this.description,
  });
}

// Corrected list name
List<WorksModel> works = [
  WorksModel(
    description:
      "Managing online courses by coordinating instructors and students, ensuring smooth class execution, handling queries, and enhancing engagement for a seamless learning experience.",
    imgURL: 'assets/images/IC.png',
    postName: 'Class Manager',
  ),
  WorksModel(
    description:
        "Handling administrative and operational tasks, assisting in project management, coordinating with teams, and ensuring smooth workflow to support business efficiency and growth.",
    imgURL: 'assets/images/skyTech.png',
    postName: 'Junior Executive',
  ),
];