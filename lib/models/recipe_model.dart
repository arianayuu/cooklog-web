class RecipeModel {
  String image;
  String url;
  String source;
  String label;

  RecipeModel({this.url, this.source, this.image, this.label});

  factory RecipeModel.fromMap(Map<String, dynamic> parsedJson) {
    return RecipeModel(
        image: parsedJson["image"],
        url: parsedJson["url"],
        source: parsedJson["source"],
        label: parsedJson["label"]);
  }
}
