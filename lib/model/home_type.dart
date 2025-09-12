import 'package:flutter/widgets.dart';

enum HomeType {aiPharmBot, aiDrugInformation , aiDrugreminder}

extension MyHomeType on HomeType{

  //title
  String get title => switch (this){
    HomeType.aiPharmBot => 'AI PharmBot',
    HomeType.aiDrugInformation => 'AI DrugInformation',
    HomeType.aiDrugreminder => 'Drug Reminder',

  };

  //lottie
  String get lottie => switch (this){
    HomeType.aiPharmBot => 'ai_hand.json',
    HomeType.aiDrugInformation => 'druginfo.json',
    HomeType.aiDrugreminder => 'drugrem.json',

  };
  //for aliginment
   bool get leftAlign => switch(this){
    HomeType.aiPharmBot => true,
    HomeType.aiDrugInformation => false,
    HomeType.aiDrugreminder => true,

  };
    //for padding
   EdgeInsets get Padding => switch(this){
    HomeType.aiPharmBot => EdgeInsets.zero,
    HomeType.aiDrugInformation => EdgeInsets.all(20),
    HomeType.aiDrugreminder => EdgeInsets.zero,

  };


}