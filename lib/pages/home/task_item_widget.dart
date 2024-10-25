import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFEC4B4B),
      ),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion:const  DrawerMotion(),
          children:  [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: const Color(0xFFEC4B4B),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

          width: 400,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 4.5,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.primaryColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Play Basket Ball",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "go to club play with friends",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.alarm,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10:30 AM",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 80,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.primaryColor),
                child:const  ImageIcon(
                  AssetImage("assets/images/Icon awesome-check.png"),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
