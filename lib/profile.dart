import 'package:flutter/material.dart';

import 'ProfileView.dart';

class CreativeProfile extends StatelessWidget {
  final List<Profile> profileList = Profile.getProfile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade100,
        title: Text("Profile",style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ProfileImage(),
              horizontalLine(),
              ProfileCard(),


            ],
          )
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
        padding: EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            Container(
              height: 135,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Row(
                children:[
                  Padding(
                  padding: EdgeInsets.only(top: 75,left: 1),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20,top: 75),
                    child: Column(
                      children: [
                        Text("Vishnu Edge",style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("vishnuedge123@gmail.com",style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                        ),),
                      ],
                    ),
                  )
              ]
              ),
            ),
          ],
        ),
      ),
    ]
    );
  }
}
class horizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height:15,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade100,
      );
  }
}


class ProfileCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 120.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("YOUR CLASSES", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 120.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("HELP CENTER", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 120.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("WISHLIST", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        horizontalLine(),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 80.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("ABOUT US", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 80.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("TERMS OF USE", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 60.0),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 80.0,
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only (
                    top: 8.0, bottom: 8.0, left: 54.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("PRIVACY POLICY", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: Colors.white,
                            ),),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
