import 'package:ccw_mini_project/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {


  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "DBMS",
      image: AssetsManager.dbms,
      name: "DBMS",
    ),
    CategoriesModel(
      id: "OS",
      image: AssetsManager.os,
      name: "OS",
    ),
    CategoriesModel(
      id: "FLAT",
      image: AssetsManager.flat,
      name: "FLAT",
    ),
    CategoriesModel(
      id: "COA",
      image: AssetsManager.coa,
      name: "COA",
    ),
  ];
}
