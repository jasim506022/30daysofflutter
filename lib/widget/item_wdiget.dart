import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catelogs_app/model/item.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name}  press");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
