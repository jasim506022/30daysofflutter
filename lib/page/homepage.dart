import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catelogs_app/model/item.dart';
import 'package:flutter_catelogs_app/widget/drawer.dart';

import '../widget/item_wdiget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day = 30;

  final String name = "Codepur";

  @override
  void initState() {
    // TODO: implement initState
    loadData();
    super.initState();
  }

  loadData() async {
    var catelogJson = await rootBundle.loadString("assets/file/catelog.json");
    var deceodeData = jsonDecode(catelogJson);
    var products = deceodeData["products"];
    CatelogModel.items =
        List.from(products).map<Item>((e) => Item.fromMap(e)).toList();
    print(deceodeData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dumlist = List.generate(50, (index) => CatelogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Catalog App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        drawer: DrawerWidget(),
        body: ListView.builder(
          itemCount: CatelogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatelogModel.items[index],
            );
          },
        ));
  }
}
