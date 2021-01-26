import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CreativeCategories extends StatelessWidget {
  final List<Category> categoriesList = Category.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.yellowAccent.shade100,
      ),
      body: ListView.builder(
      itemCount: categoriesList.length,
      itemBuilder:(BuildContext context, int index) {
    return Stack(
        children: [
         categoryCard(categoriesList[index], context),
      Positioned(
          top: 10.0,
          child: categoryImage(categoriesList[index].images[0])),

    ]
    );
    },
      )
    );
  }

  Widget categoryCard(Category category, BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,left: 54.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Flexible(
                      child: Text("${category.title}",style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
              ),
            ),
          ),
        ),
      ),
      onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>
            CreativeCategoriesDetails(categoreisName: category.title,category: category)
            )
            );
      },
    );
  }
  Widget categoryImage(String imageUrl){
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),

        )
    );
  }
}

class CreativeCategoriesDetails  extends StatelessWidget {
  final String categoreisName;
  final Category category;
  const CreativeCategoriesDetails({Key key, this.categoreisName, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${category.title}", style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.yellowAccent.shade100,
      ),
      body: ListView(
        children: [
          CategoriesThumbnail(thumbnail: category.images[0]),
          CategoriesDetailsHeaderWithPoster(category: category)


        ],
      ),
    );
  }
}

class CategoriesThumbnail extends StatelessWidget {
  final String thumbnail;

  const CategoriesThumbnail({Key key, this.thumbnail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover,

                )
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors:[Color(0x00f5f5f5),Color(0xfff5f5f5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
            ),
          height:80 ,
          ),

      ],
    );
  }
}
class CategoriesDetailsHeaderWithPoster extends StatelessWidget {
  final Category category;

  const CategoriesDetailsHeaderWithPoster({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 16.0),
      child: Row(
        children: [
          CategoryPoster(poster : category.images[0].toString()),
          SizedBox(
            width: 16,
          ),
          Expanded(child: CategoryDetailsHeader(category: category))
        ],

      ),
    );
  }
}

class CategoryPoster extends StatelessWidget{
  final String poster;

  const CategoryPoster({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadious = BorderRadius.circular(10);
    return Card(
      child: ClipRRect(
        borderRadius: borderRadious = borderRadious,
        child: Container(
          width: MediaQuery.of(context).size.width / 4 ,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(poster),
                  fit: BoxFit.cover

              )
          ),

        ),
      ),
    );
  }
}
class CategoryDetailsHeader extends StatelessWidget{
  final Category category;

  const CategoryDetailsHeader({Key key, this.category}) : super(key: key);
  @override
  Widget build (BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(category.title,style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),),
          Text.rich(TextSpan(style: TextStyle(fontWeight: FontWeight.w300,
              fontSize: 14),
              children: [
                TextSpan(
                    text: category.description
                ),
                TextSpan(
                    text: " more...",
                    style: TextStyle(
                      color: Colors.indigoAccent,
                    )
                )
              ]
          ),
          )
        ],
      ),
    );
  }
}
