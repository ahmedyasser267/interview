import 'package:flutter/material.dart';

class Invocelist extends StatefulWidget {
  const Invocelist({Key? key}) : super(key: key);

  @override
  State<Invocelist> createState() => _InvocelistState();
}

class _InvocelistState extends State<Invocelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Map<String,dynamic>>>(future: _fecth()
        , builder: (context,snapshot){

        if(!snapshot.hasData){
          return Center(child: Text('wating'),);
        }
        return ListView.builder(itemBuilder: (BuildContext context, int index) {        final invote=snapshot.hasData!;
    final invote=snapshot.hasData!;

    },






      ),
    )
    );

  }
}
