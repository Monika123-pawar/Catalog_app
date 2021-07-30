import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtech/models/catalog.dart';
import 'package:mtech/widgets/drawer.dart';
import 'package:mtech/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = 'Mona';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
   var catalogJson=await rootBundle.loadString("assets/files/catalog.json");
   var decodedData=jsonDecode(catalogJson);
   var productData=decodedData['products'];
   CatalogModal.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

   setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(13, (index) => CatalogModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModal.items!=null && CatalogModal.items.isNotEmpty )?ListView.builder(
            itemCount: CatalogModal.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModal.items[index],
              );
            })
            :Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
