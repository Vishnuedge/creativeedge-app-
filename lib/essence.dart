import 'package:creative_edge/cartapp.dart';
import 'package:creative_edge/essencedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:creative_edge/MyStore.dart';
import 'package:creative_edge/essencedetailpage.dart';

class EssenceMain extends StatelessWidget {
  // final List<EssenceData> elist = EssenceData.getEssenceDatas();
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade100,
       actions: [
         IconButton(
           icon: Icon(Icons.shopping_cart),
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) =>
                CartApp(),
             )
             );
           },
         )
       ],
        title: Text("Essence",style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),
      body: ListView.builder(
          itemCount: store.essencedatas.length,
          itemBuilder: (BuildContext context,int index){
            return Row(
            children: [
              EssenceList(context, index),
            ],
            );
    })
    );
  }
}
Widget EssenceList (BuildContext context, index){
  var store = Provider.of<MyStore>(context);
  return InkWell(
    onTap: (){
      store.setActiveProduct(store.essencedatas[index]);
      Navigator.push(context,MaterialPageRoute(builder: (context)=> EssenceDetailsPage()));
    },
    child: Padding(
      padding: EdgeInsets.only(top: 10, left: 10.0),
      child: Column(
          children:[
      Stack(
      children: [
      Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 250,
      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(15)),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 180,left: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(store.essencedatas[index].juicetitle),
                  SizedBox(height: 10,),
                  Text(store.essencedatas[index].jucieSugarlevel),
                Text(store.essencedatas[index].juiceprice.toString())

                ]
              ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180,left: 10,right: 10),
            child: RaisedButton(
              onPressed: (){
              },
              child: Text("+"),
            ),
          ),
        ],
      ) ,
    ),
    Container(
    height: 150,
    width:  MediaQuery.of(context).size.width - 20,
    decoration: BoxDecoration(color: Colors.grey),
    ),
    ],
    ),
    ],
            ),
      ),
  );
  }

