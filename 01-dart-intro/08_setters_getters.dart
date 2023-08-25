void main(){
  final mySquare = new Square(side:10);
  
  mySquare.side = -6;
  
  print('Area: ${mySquare.area}');
}

class Square{
  
  double _side;
  
  Square({required double side})
    :_side = side; 
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    print('settings new value');
    if ( value < 0) throw 'value must be greater than 0';
  
    _side = value;
  }
  
  double calculatedArea(){
    return _side * _side;
  } 
     
}