import 'package:flutter/material.dart';
import 'package:food_oredering_app/scr/models/categoryModel.dart';
import '../helpers/category.dart';
import '../models/categoriesModel.dart';

class CategoryProvider with ChangeNotifier{
  CategoryServices _categoryServices = CategoryServices();
  List<CategoryModel> categories = [];

  CategoryProvider.initialize(){
    loadCategories();
  }

  loadCategories()async{
    categories = await _categoryServices.getCategories();
    notifyListeners();
  }
}