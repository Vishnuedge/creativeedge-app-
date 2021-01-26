import 'package:flutter/material.dart';
import 'essencedata.dart';

class MyStore extends ChangeNotifier{
  List<EssenceData> _products = [];
  List<EssenceData> _baskets = [];
  EssenceData       _activeProduct = null;


  MyStore(){
    _products=[
      EssenceData(id:1,juicequantity : 1 ,juicetitle: "Super Green", juiceprice: 100,jucieSugarlevel: "No added Sugar", juiceingrediants : "", juiceposter : ""),
      EssenceData(id:2,juicequantity : 1 ,juicetitle: "Red  Robin", juiceprice: 100,jucieSugarlevel: "No added Sugar"),
      EssenceData(id:3,juicequantity : 1 ,juicetitle: "Mighty Orange", juiceprice: 100,jucieSugarlevel: "No added Sugar"),
      EssenceData(id:4,juicequantity : 1 ,juicetitle: "PineApple", juiceprice: 100,jucieSugarlevel: "No added Sugar"),
    ];
    notifyListeners();
  }

  List <EssenceData> get essencedatas => _products;
  List <EssenceData> get baskets => _baskets;
  EssenceData        get activeproducts => _activeProduct;

  setActiveProduct (EssenceData A){
    _activeProduct = A;
  }
  addOneItemToBasket(EssenceData A){
   EssenceData found =  _baskets.firstWhere((a) => a.id == A.id, orElse: ()=> null);
    if (found != null) {
      found.juicequantity += 1;
    }else{
      _baskets.add(A);
    }
    notifyListeners();
  }
  removeOneItemToBasket(EssenceData A){
    EssenceData found =  _baskets.firstWhere((a) => a.id == A.id, orElse: ()=> null);
    if (found != null && found.juicequantity == 1) {
      _baskets.remove(A);
    }else{
      found.juicequantity -= 1;
    }
    notifyListeners();
  }
  getBasketqty (){
    int total = 0;
    for (int i=0;i<baskets.length;i++){
      total+= baskets[i].juicequantity;
    }
    return total;
  }
}