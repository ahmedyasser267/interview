import 'dart:ffi';

import 'package:flutter/material.dart';

import '../model/database.dart';
class Invoicedetailspage extends StatefulWidget {
  const Invoicedetailspage({Key? key}) : super(key: key);

  @override
  State<Invoicedetailspage> createState() => _InvoicedetailspageState();
}

class _InvoicedetailspageState extends State<Invoicedetailspage> {
  String? productName;
  int?unit;
  Float? price;
  Float? Qu;
  Float? _total;
  DateTime? exdate;
 var DATA=DB();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'prdouctname',

            )
            ,
            onSaved: (value){
              productName=value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'unit',

            )
            ,
            onSaved: (value){
              unit=value as int?;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'price',

            )
            ,
            onSaved: (value){
              price=value as Float?;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'total',

            )
            ,
            onSaved: (value){
              price=value as Float?;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'exdate',

            )
            ,
            onSaved: (value){
              exdate=value as DateTime?;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(onPressed: () async {
            final db=await DB().database;
            await db?.insert('InvoiceDetails', {
              'productName':productName,
              'Unit':unit,
              'price':price,
              'Total':_total,
              'expiryDate':exdate,
            }
            );




          }, child: Text('save'))

        ],
      ),


    );
  }
}
