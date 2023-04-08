import 'package:dexider/constants.dart';

class HomeViewModel {

  List sections = patternJson["sections"] as List;

  late dynamic navBar;
  late dynamic banner;
  late dynamic about;
  late dynamic testimonial;
  late dynamic footer;


  start(){

    for(var element in sections){
      if(element["name"]=="nav_bar"){
        navBar = element;
      }else if(element["name"]=="banner"){
        banner = element;
      }else if(element["name"]=="about"){
        about = element;
      }else if(element["name"]=="testimonial"){
        testimonial = element;
      }else {
        footer = element;
      }
    }
    
  }
}