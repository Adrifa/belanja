import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Chili', price: 4000),
    Item(name: 'Cheese', price: 100000)
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Barang"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                    return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                        child: Container(
                            margin: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Expanded(child: new Text(item.name.toString())),
                                Expanded(
                                    child: Text(
                                  item.price.toString(),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ))),
                  );
                })));
  }
}