
import 'city.dart';
//import 'country.dart';

void main() {
  print("เมืองน่าเที่ยว");


  var order = City();
  print("ยินดีต้อนรับสู่" + order.country);
  order.callSuper();

  print(order.callAnime());
  order.callProblem();
}