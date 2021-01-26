import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:creative_edge/MyStore.dart';
import 'package:creative_edge/basket.dart';

class EssenceDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    return Scaffold(
      appBar: new AppBar(

        actions: <Widget>[

          new Padding(padding: const EdgeInsets.all(10.0),

            child: new Container(
                height: 150.0,
                width: 30.0,
                child: new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder:(BuildContext context) =>
                            new BasketPage()
                        )
                    );
                  },

                  child: new Stack(

                    children: <Widget>[
                      new IconButton(icon: new Icon(Icons.shopping_cart,
                        color: Colors.white,),
                        onPressed: null,
                      ),
                      new Positioned(

                          child: new Stack(
                            children: <Widget>[
                              new Icon(
                                  Icons.brightness_1,
                                  size: 20.0, color: Colors.green[800]),
                              new Positioned(
                                  top: 3.0,
                                  right: 6.0,
                                  child: new Center(
                                    child: new Text(
                                      store.getBasketqty().toString(),
                                      style: new TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  )),


                            ],
                          )),

                    ],
                  ),
                )
            )

            ,)],),
    body: Align(
    alignment: Alignment.center,
    child: Column(
    children: [
    Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(color: Colors.orange),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(store.activeproducts.juicetitle),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0
    ),
              child: Text(store.activeproducts.juiceprice.toString()),
            ),
            SizedBox(height: 200),
            Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                    store.removeOneItemToBasket(store.activeproducts);
                  },
                    icon: Icon(Icons.remove,color: Colors.red,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Text(store.activeproducts.juicequantity.toString()),
                  ),
                  IconButton(
                    onPressed: (){
                      store.addOneItemToBasket(store.activeproducts);
                    },
                    icon: Icon(Icons.add,color: Colors.green,),
                  ),

                ],
              ),
            )

          ],
        ),
      ) ,
    );
  }
}
