class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      description: 'Learning Material Updates everyday',
      image: 'assets/4.png',
      title: "Lorem Ipsum"),
  UnbordingContent(
      description: 'Mentoring by Certified Teachers',
      image: 'assets/1.png',
      title: "Lorem Ipsum"),
  UnbordingContent(
      description: 'Increase your Knowledge with our App',
      image: 'assets/2.png',
      title: "Lorem Ipsum"),
  // UnbordingContent(
  //     description: 'Increase your Knowledge with our App',
  //     image: 'assets/3.png',
  //     title: "Lorem Ipsum"),
];
