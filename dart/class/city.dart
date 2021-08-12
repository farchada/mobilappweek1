import 'country.dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("แคนเบอร์ร่า", "จิงโจ้");

  void callSuper() {
    print("เมืองหลวง : " + super.city);
    super.callHello();
  }

  @override
  String callAnime() => "จิงโจ้";
}