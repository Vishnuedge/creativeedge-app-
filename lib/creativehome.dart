import 'package:flutter/material.dart';

class CreativeHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent.shade100,
          title: Text("Creative Edge",style: TextStyle(color: Colors.black),),
        ),
    body :ListView(
       children:[
         Column(
           children: [
             CreativeStaffs(),
             horizontalLine(),
             CreativeOffers(),
             CreativeToday(),
           ],
         ) ,
       ],
     ),
    );
  }
}

class CreativeStaffs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20,horizontal:20),
        child: Row(
          children: [
            InkWell(
              child: Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.orange.shade400,borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("v")
                    ],
                  ),
                ),
              ),
              onTap: (){
              },
            ),

            InkWell(
              child: Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.orange.shade400,borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("v")
                    ],
                  ),
                ),
              ),
            ),

            InkWell(
              child: Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.orange.shade400,borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("v")
                    ],
                  ),
                ),
              ),
            ),

            InkWell(
              child: Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.orange.shade400,borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("v")
                    ],
                  ),
                ),
              ),
            ),

            InkWell(
              child: Container(
                width: 100,
                margin: EdgeInsets.only(right: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.orange.shade400,borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("v")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class horizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        height:1,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
      ),
    );
  }
}

class CreativeOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,

      child:Container(
        margin: const EdgeInsets.symmetric(vertical: 20,horizontal:20),
        height: 300,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              width:MediaQuery.of(context).size.width - 25 ,
              height: 300,
              color: Colors.orange,
            ),

            Container(
              margin: EdgeInsets.only(right: 20),
              width:MediaQuery.of(context).size.width - 25 ,
              height: 300,
              color: Colors.orange,

            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              width:MediaQuery.of(context).size.width - 25 ,
              height: 300,
              color: Colors.orange,

            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              width:MediaQuery.of(context).size.width - 25 ,
              height: 300,
              color: Colors.orange,

            ),
          ],
        ),
      ),
    );
  }
}

class CreativeToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20,left: 20),
      height: 550,
      width: MediaQuery.of(context).size.width,
      color:Colors.orange ,
      child: Column(
        children: [
          Container(
            child: Padding(
                padding: EdgeInsets.only(top: 20,right: 170),
                child: Text("What's today ?",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),)),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 200,
                    decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),

                  ),
                ),
              ),
              SizedBox(width: 70),

              InkWell(
                child: Container(
                  decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: MediaQuery.of(context).size.width / 3,
                  height: 200,),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [

              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 200,
                    decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),

                  ),
                ),
              ),
              SizedBox(width: 70),

              InkWell(
                child: Container(
                  decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: MediaQuery.of(context).size.width / 3,
                  height: 200,),
              ),
            ],
          )
        ],
      ),
    );
  }
}