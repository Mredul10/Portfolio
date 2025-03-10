class ProjectModel {
  final String imgURL;
  final String projectName;
  final String? description;

  ProjectModel({
    required this.imgURL,
    required this.projectName,
    this.description,
  });
}
// this is the mode that i have already created.
List<ProjectModel> projects = [
  ProjectModel(
    description:
        "A Weather App using an API fetches and displays real-time weather data for various locations. Users can view current weather conditions, forecasts, and severe weather alerts. The app often includes features like hourly and weekly forecasts, weather maps, and the ability to save favorite locations for quick access.",
    imgURL: 'assets/images/weather.png',
    projectName: 'Weather App',
  ),
];