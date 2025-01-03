import 'package:flutter/material.dart';
import 'package:learn_flutter/project/theme/theme.dart';

import '../model/MenuModal.dart';

class SideMenuWidget extends StatefulWidget {

  final MenuModal item ;
  final VoidCallback ontap ;
  final int isSelected ;
  const SideMenuWidget({super.key , required this.item, this.isSelected  = 1 ,required this.ontap});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Theme.of(context).colorScheme.mainColor ;

    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.item.id == widget.isSelected ? mainColor : null,
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),

      child: InkWell(
        onTap: widget.ontap ,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(13),
              child: Icon(
                widget.item.icon,
                color: widget.item.id == widget.isSelected ? textMenuChoosed : Theme.of(context).colorScheme.maintext,
              ),
            ),
            Text(
              widget.item.title,
              style: TextStyle(
                fontSize: 16,
                color: widget.item.id == widget.isSelected ? textMenuChoosed : Theme.of(context).colorScheme.maintext ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
