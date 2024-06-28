import 'package:flutter/material.dart';

import 'InvoiceDetailsPage.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Invoicedetailspage()),
              );



            }, child: Text('InvoiceDetails')),
            TextButton(onPressed: (){}, child: Text('Invoice List')),


          ],
        ),
      ),
    );
  }
}
