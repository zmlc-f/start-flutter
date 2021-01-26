import 'car.dart';
import 'person.dart';
import 'animal.dart';

main() {
  // var str = "dkpsdkpaksd";

  // const String str = "odkadks";

  // final String str = "as";
  // final String str2 = 12121;

  // print("$str $str2");

  // int a = 1;
  // double b = 12.3;
  // print(a % b);

  // String str = "aosdkoa";
  // print(str is String);
  // print(str.runtimeType);

  // var list = [1, 2, 3, "12334"];
  // list.add(23);
  // list.removeLast();
  // list.add({"a": 1});
  // list.removeAt(1);
  // list.removeRange(1, 2); //1开始2（不包含2）结束
  // print(list);
  // print(list.runtimeType);

  // var list2 = [1, 2, 3];
  // list2.addAll([3, 4, 5, 6]);
  // list2.removeWhere((item) => item > 3);
  // print(list2);
  // print(list2.runtimeType);
  // print(list2.reversed);
  // print(list2.reversed.runtimeType);
  // print(list2.reversed.toList());

  // var list3 = [1, 2, 3, 4, 4, 5, 6];
  // var list4 = [
  //   {"id": 1, "name": "aaa"},
  //   {"id": 1, "name": "bbb"},
  //   {"id": 1, "name": "aaa"}
  // ];
  // print(list3.take(5).toList());
  // print(list3.contains(6));
  // print(list3.toSet().toList()); //去重
  // print(list4.toSet().toList());

  // var obj1 = {
  //   "name": "dkaoskd",
  //   "age": 1,
  //   "desc": ["kdoakd", "dkapdk"]
  // };
  // obj1.addAll({"address": "dkpasdkpakdaspdk"});
  // print(obj1["age"]);
  // print(obj1);
  // print(obj1.keys.toList());

  // String myfn() {
  //   print("daksldkaldkl");
  //   Map myMap = {};
  //   print(myMap.runtimeType);
  //   return "dkaskod";
  // }
  // myfn();

  // void myFn(String name, [int age = 22, String address = ""]) {
  //   print("$name 年龄：$age 地址：${address != "" ? address : "无"}");
  // }
  // myFn("kaskdl", 11);

  // void myFn2(String name, {int age = 22, String address = ""}) {
  //   print("$name 年龄：$age 地址：${address != "" ? address : "无"}");
  // }
  // myFn2("dkpasd", address: "dlkdasldk");

  // print("main start");
  // foo();
  // print("main end");

  // Person p = new Person("dksdlaldkasldk", 11);
  // Person p = new Person();
  // p.outpuInfo();

  // Animals a = new Animals();
  // a.eat();
  // Dog d = new Dog();
  // d.eat();
  // d.drink();
  // Cat c = new Cat();
  // c.eat();

  Car c = new Car();
  c.getWheelsNum();
}

foo() async {
  print("foo");
  // String v = await bar();
  // print(v);
  return Future(bar).then((v) => print(v));
}

bar() async {
  print("bar");
  return "hello";
}
