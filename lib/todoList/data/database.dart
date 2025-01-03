import 'package:hive_flutter/adapters.dart';

class TodoDatabase {
  List todolist = [] ;

  final _myBox = Hive.box("myBox") ;

  void createInitialData() {
    todolist = [
      ["Task 1" , false] ,
      ["Task 2", false]
    ];
  }

  void loadData() {
    todolist = _myBox.get("todolist");
  }

  void updateDatabase() {
    _myBox.put("todolist",  todolist) ;
  }

}