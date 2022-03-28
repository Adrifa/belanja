import 'package:belanja/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];

  Widget build(BuildContext context) {
    //TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping List"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
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
                  return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                );

                }))
 
               
                
                );


  }




}