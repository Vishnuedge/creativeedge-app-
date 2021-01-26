import 'package:flutter/cupertino.dart';

class EssenceData{

  // static List<EssenceData> getEssenceDatas() => [
  //   EssenceData(
  //     1,
  //     "Super Green",
  //     "No Sugar Added",
  //     100,
  //     1,
  //     "Spinach, Mint, Corriander, Apple, Cucumber, Lemon",
  //     ""
  //   ),
  //   EssenceData(
  //     2,
  //       "Red Robin",
  //       "No Sugar Added",
  //       100,
  //       1,
  //       "Cucumber, Carrot, Beet, Lemon, Orange, Fennal",
  //       ""
  //   ),
  //   EssenceData(
  //     3,
  //       "Mighty Orange",
  //       "No Sugar Added",
  //       100,
  //       1,
  //       "Carrot, Orange, Ginger, Lemon",
  //       ""
  //   ),
  //   EssenceData(
  //     4,
  //       "PineApple",
  //       "No Sugar Added",
  //       100,
  //       1,
  //       "Spinach, Mint, Corriander, Apple, Cucumber, Lemon",
  //       ""
  //   ),
  //
  // ];
  int id;
  String juicetitle;
  String jucieSugarlevel;
  double juiceprice;
  int   juicequantity;
  String juiceingrediants;
  String juiceposter;


  EssenceData({
      this.id,
      this.juicetitle,
      this.jucieSugarlevel,
      this.juiceprice,
      this.juicequantity,
      this.juiceingrediants,
      this.juiceposter});
}