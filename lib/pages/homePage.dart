
import 'package:flutter/material.dart';
import 'package:mtech/models/catalog.dart';
import 'package:mtech/widgets/drawer.dart';
import 'package:mtech/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days=30;
 final String name='Mona';


  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(13, (index) => CatalogModal.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context,index){
            return ItemWidget(
              item:dummyList[index],
            );
          }
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
