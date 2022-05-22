
// instance from catch
// ---------------------------------------------------------------------------------

class Person{
  String name;
  static final _catchedUsers = {};
  
  Person._internal(this.name);
  
  factory Person(String name){
    return _catchedUsers.putIfAbsent(name, ()=>Person._internal(name));
  }
  
  void showData(){
    print('$name : $hashCode');
  }
}

void main(){
  Person p1 = Person('Mark');
  Person p2 = Person('John');
  Person p3 = Person('Mark');
  
  
  p1.showData();
  p2.showData();
  p3.showData();     
}