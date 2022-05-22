// 1
// Must return an instance (same or sub class) using return statement
-------------------------------------------------------
class Abc{  
  Abc();
  
  Abc.someName();
  
  //
  factory Abc.callMe(){
    return Abc();
  }  
}


// 2
// It can be named or unnamed & invoked like normal constructor
-------------------------------------------------------
class Abc{  
  Abc();
  
  Abc.someName();
  
  //
  factory Abc.callMe(){
    return Abc();
  }  
}

void main(){
  Abc obj = Abc();
}


// 3
// It can accept parameters as required
-------------------------------------------------------
class Abc{  

	Abc();  
  
  //
  factory Abc.callMe(int x, int y){
    return Abc();
  }  
}

void main(){
  Abc obj = Abc.callMe(10, 20);
}



// 4
// Cannot access instance members of class
-------------------------------------------------------
class Abc{  
  int x = 10;
    
  Abc(){
    x = 100;    
  }
  
  //
  factory Abc.callMe(){
    x = 100;   
    return Abc();
  }  
}



// 5
// It has no access to ‘this’ reference
-------------------------------------------------------
class Abc{  
  int x = 10;
    
  Abc(){
    x = 100;    
  }
  
  //
  factory Abc.callMe(){
    this.x = 100;   
    return Abc();
  }  
}



// 6
// Can access static members of class
-------------------------------------------------------
class Abc{  
  static int x = 10;
    
  Abc(){
    x = 100;    
  }
  
  //
  factory Abc.callMe(){
     x = 100;   
    return Abc();
  }  
}


// 7
// There can’t be factory & generative constructors with same name
-------------------------------------------------------
class Abc{  
      
  Abc(){   
  }
  
  Abc.someNamed(){}
  
  //
  factory Abc(){    
    return Abc.someNamed();
  }  
}



// 8
// Multiple factory constructors are possible
-------------------------------------------------------
class Abc{  
      
  Abc(){   
  }
   
  factory Abc.factory1(){    
    return Abc();
  }  
  
  factory Abc.factory2(){    
    return Abc();
  }
}


// 9
// It can’t invoke super class constructor using ‘super’
-------------------------------------------------------
class Father{
  Father();
  
  Father.callMe(int a, int b);  
}

class Son extends Father{
  //
  Son(){    
  }
  
  //
  Son.someName(){    
  }
  
  
  //
  factory Son.demo(){
    return Son.someName();
  }
}


// 10
// It can’t be called by sub class constructor using ‘super’
-------------------------------------------------------
class Father{
  Father();
  
  factory Father.callMe(){
    return Father();
  }  
}

class Son extends Father{
  //
  Son();  
}