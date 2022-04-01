import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
 
class ItemPage extends StatelessWidget {
const ItemPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final Item itemArgs = ModalRoute.of(context)?.settings.arguments as Item;

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text( "Detail"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
              'Nama Barang: '+itemArgs.name +'\n  Harga : '+ itemArgs.price.toString(),
              textAlign: TextAlign.center,
              ),

        ),

    );
  }
}