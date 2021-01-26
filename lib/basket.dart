
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:creative_edge/MyStore.dart';
import 'package:geolocator/geolocator.dart';


class BasketPage extends StatelessWidget {
  // Position currentPosition;
  // var geoLocator = Geolocator();
  //
  // void locatePosition() async
  // {
  //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   currentPosition = position;
  //
  //   LatLng latLatPosition = LatLng(position.latitude, position.longitude);
  //
  //   CameraPosition cameraPosition = new CameraPosition(target: latLatPosition, zoom: 14);
  //   newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  //
  // }

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    return Scaffold(
        appBar: new AppBar(

      ),
      // appBar: AppBar(
      //   title: Text("Basket"),
      //   actions: [
      //     InkWell(
      //       onTap: (){
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context)=> BasketPage())
      //         );
      //       },
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(store.getBasketqty().toString()),
      //       ),
      //
      //     ),
      //   ],
      // ),
      body: ListView.builder(itemCount: store.baskets.length,itemBuilder:(BuildContext context, int index){
        return Row(
          children: [
            Expanded(flex: 2,child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),),
            Expanded(flex: 2,child: Text(store.baskets[index].juicetitle)),
            Expanded(flex: 2,child:Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){
                      store.removeOneItemToBasket(store.baskets[index]);
                    },
                    icon: Icon(Icons.remove,color: Colors.red,),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey)
                    ),
                    child: Text(store.baskets[index].juicequantity.toString()),
                  ),
                  IconButton(
                    onPressed: (){
                      store.addOneItemToBasket(store.baskets[index]);
                    },
                    icon: Icon(Icons.add,color: Colors.green,),
                  ),
                ],
              ),
            ),
            )
          ],
        );
;      }),
    );
  }
}
