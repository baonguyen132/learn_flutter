import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todotile extends StatefulWidget {


  final String taskName ;
  final bool taskComplected ;
  Function(bool?)? onChanged ;
  Function(BuildContext?) deleteFunction ;
  Function(BuildContext?) editFunction ;

  Todotile({
    super.key ,
    required this.taskName ,
    required this.taskComplected ,
    required this.onChanged ,
    required this.deleteFunction,
    required this.editFunction

  });

  @override
  State<Todotile> createState() => _TodotileState();
}

class _TodotileState extends State<Todotile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25 , right: 25 , top: 25),
      child: Slidable(
          endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: widget.editFunction,
                  icon: Icons.edit,
                  backgroundColor: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                SlidableAction(
                  onPressed: widget.deleteFunction,
                  icon: Icons.delete,
                  backgroundColor: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                )
              ]
          ),
          child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              children: [
                Checkbox(
                  value: widget.taskComplected,
                  onChanged: widget.onChanged,
                  checkColor: Colors.white,
                ),
                SizedBox(width: 10,),
                Text(
                  widget.taskName,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: widget.taskComplected ? TextDecoration.lineThrough : TextDecoration.none,
                      decorationColor: Colors.white
                  ),
                )
              ],
            ),
          )
      )
    );
  }
}
