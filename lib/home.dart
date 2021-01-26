import 'package:creative_edge/categories.dart';
import 'package:creative_edge/essence.dart';
import 'package:creative_edge/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'creativehome.dart';


class CreativeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.yellowAccent.shade100,
        inactiveColor: Colors.white,
        activeColor: Colors.black,
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home',style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, ),
            title: Text('categories',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('about',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('essence',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            )),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('profile',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
            )),
          ),
        ],
      ),

      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: CreativeHomeView (),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: CreativeCategories (),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: CreativeCategories(),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: EssenceMain(),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: CreativeProfile(),
              );
            });
          default: return CupertinoTabView(builder: (context) {
            return CupertinoPageScaffold(
              child: CreativeHomeView(),
            );
          });
        }
      },
    );
  }
}








