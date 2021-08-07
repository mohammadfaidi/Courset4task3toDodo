import 'package:cour4task3/Providers/task.dart';
import 'package:flutter/cupertino.dart';

class TasksProvider with ChangeNotifier{

  List<Task> _items = [];
  
    void add(Task item) {
    _items.add(item);
    notifyListeners();
  
  }
   void remove(Task item) {
    _items.remove(item);
    notifyListeners();
  }
  int get count {
    return _items.length;
  }

List<Task> get basketItems {
    return _items;
  }


}