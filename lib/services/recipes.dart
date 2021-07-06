import 'dart:convert';
import 'package:cooklog_web/models/hits.dart';

class Recipe {
  List<Hits> hits = [];

  Future<void> getRecipe() async {
    //String url =
    //   "https://api.edamam.com/search?q=banana&app_id=c3536992&app_key=355a16e5464d07d7ad267aa15966840e";

    var response = await http.get(Uri.parse(
        'https://api.edamam.com/search?q=banana&app_id=c3536992&app_key=355a16e5464d07d7ad267aa15966840e'));

    var jsonData = jsonDecode(response.body);
    jsonData["hits"].forEach((element) {
      Hits hits = Hits(
        recipeModel: element['recipe'],
      );
      // hits.recipeModel = add(Hits.fromMap(hits.recipeModel));
    });
  }
}
