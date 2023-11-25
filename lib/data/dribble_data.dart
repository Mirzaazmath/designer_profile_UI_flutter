class ModelData{
  final String imageUrl;
  final String title;
  final String date;
  final String likes;
  ModelData({required this.title,required this.imageUrl,required this.date,required this.likes});
}
List<ModelData>postList=[
  ModelData(title: "Unlock brain", imageUrl: "assets/design1.png", date: "23 nov 2023", likes: "25k"),
  ModelData(title: "Skill jet", imageUrl: "assets/design2.png", date: "02 nov 2023", likes: "135k"),
  ModelData(title: "Spotify", imageUrl: "assets/design3.png", date: "19 oct 2023", likes: "121k"),
  ModelData(title: "Health care", imageUrl: "assets/design4.png", date: "21 sep 2023", likes: "201k")
];