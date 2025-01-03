import 'dart:math';

import 'package:flutter/material.dart';

import 'MyButton.dart';

class DialogCustome extends StatefulWidget {

  TextEditingController textEditingController ;
  VoidCallback onSave ;
  VoidCallback onCancel ;

  DialogCustome({super.key , required this.textEditingController , required this.onSave , required this.onCancel});

  @override
  State<DialogCustome> createState() => _DialogCustomeState();
}

class _DialogCustomeState extends State<DialogCustome> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: IntrinsicHeight(
        child: Container(
            width: min(MediaQuery.of(context).size.width , 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  controller: widget.textEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add new task",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Mybutton(
                      text: "Save",
                      onPressed: widget.onSave
                    ),
                    const SizedBox(width: 20) ,
                    Mybutton(
                      text: "Cancel",
                      onPressed: widget.onCancel
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
