/**
 * 抽象类根据关键字abstract来定义
 * 抽象类中不实现方法体的方法就叫抽象方法
 * 如果我们继承一个抽象类，则必须实现抽象类中的抽象方法
 */
abstract class Animals {
  void eat() {
    //不是抽象方法
    print("吃");
  }

  // void eat(); //是抽象方法
}

class MixTest {
  void drink() {
    print("喝");
  }
}

/**
 * implements 不管方法体有没有被实现都需要自己实现
 */
class Dog with MixTest implements Animals {
  @override
  void eat() {
    print("吃 gu tou");
  }
  // void eat() {
  //   print("吃 gu tou");
  // }
}

class Cat extends Animals {
  void eat() {
    print("吃 yu");
  }
}
