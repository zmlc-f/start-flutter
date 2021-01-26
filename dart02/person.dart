class Person {
  String name = "";
  int age = 12;
  String address = "";

  static int _phone = 15699999999;

  // Person(String name, int age, [String address]) {
  //   this.name = name;
  //   this.age = age;
  //   this.address = address;
  // }
  Person()
      : name = "kdlsad",
        age = 22,
        address = "" {}

  outpuInfo() {
    print("$name 年龄：$age 地址：${address != "" ? address : "无"} $_phone");
  }

  // static getName() {
  //   print(name);
  // }
  static getPhone() {
    print(_phone);
  }
}
