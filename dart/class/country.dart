class Country {
  var country = "ออสเตเรีย";
  var city;
  var _anime = "จิงโจ้";
  static var color = "yello";

  Country(this.city, this._anime);

  Country.japan(String city, String anime)
      : this(city, anime); //Redirect Constructor

  void callHello() {
    print("สัตว์ประจำถิ่น");
  }

  String callAnime() => this._anime;
}