import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:learn_flutter/todoList/data/database.dart';
import 'package:learn_flutter/todoList/util/DialogCustome.dart';
import 'package:learn_flutter/todoList/util/Todotile.dart';

class Maintodoapp extends StatefulWidget {
  const Maintodoapp({super.key});

  @override
  State<Maintodoapp> createState() => _MaintodoappState();
}

class _MaintodoappState extends State<Maintodoapp> {

  // reference the hive box
  final _myBox = Hive.box("myBox") ;
  TodoDatabase db = TodoDatabase() ;

  @override
  void initState() {
    if (_myBox.get("todolist") == null) {
      db.createInitialData() ;
    }
    else {
      db.loadData() ;
    }
  }




  TextEditingController _textEditingController = TextEditingController() ;

  void deleteTask(index) {
    setState(() {
      db.todolist.removeAt(index) ;
      db.updateDatabase();
      print(index);
    });
  }

  void checkBoxChanged(bool? value , int index){
    setState(() {
      db.todolist[index][1] = value ;
      db.updateDatabase() ;
    });
  }
  void showDialogCreate(index) {
    if(index != -1){
      _textEditingController.text = db.todolist[index][0] ;
    }
    showDialog(
      context: context,
      builder: (context) => DialogCustome(
        textEditingController: _textEditingController,
        onSave: () {
          setState(() {
            index == -1 ? db.todolist.add([_textEditingController.text , false]) : db.todolist[index][0] = _textEditingController.text ;
            _textEditingController.clear() ;
          });
          db.updateDatabase() ;
          Navigator.of(context).pop() ;
        },
        onCancel: () {
          _textEditingController.clear() ;
          Navigator.of(context).pop() ;
        },
      ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "TO DO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 5
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: db.todolist.length,
          itemBuilder: (context, index) => Todotile(
              taskName: db.todolist[index][0],
              taskComplected: db.todolist[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
            editFunction: (context) {
                showDialogCreate(index) ;
            },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialogCreate(-1) ;
        },
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
