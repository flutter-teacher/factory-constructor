// singletone class
-----------------------------------------------------------
class Test {
  // static instance of Test class
  static final Test _instance = Test._internal();

  // factory constructor
  factory Test() {    
    return _instance;
  }

  // private constructor
  Test._internal();
}

void main() {
  Test t1 = Test();
  Test t2 = Test();

  print(t1.hashCode);
  print(t2.hashCode);
}