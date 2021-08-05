void main() {
  print(callGen(1999)); //เรียกฟังชั่น callGen
  print(callColor("black")); //เรียกฟังชั่น callColor
  callWeb("Facebook", port: 443, protocal: "https"); //เรียกฟังชั่น callWeb
}

String callGen(int year) =>
    (year >= 1996) ? "Gen Z" : "Gen Y"; //แบบ arrow function

int callColor([String newColor = "pink"]) {
  List<dynamic> color = ["red", "green", "blue"];
  color.add(newColor);
  for (var item in color) {
    print(item); //แสดงค่าใน color
  }
  return color.length;
}

void callWeb(String web,
        {int port = 80,
        String protocal = "http"}) => //รับค่าแบบกำหนดชื่อ
    print("$protocal $web : $port");
  
