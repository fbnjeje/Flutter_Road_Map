void main (){
  
//   Con la manera 1  y  2
//   final wolfverine = new Hero('Logan','Regeneration');

  
  //   Con la manera 3
  
  final wolfverine = new Hero(name: 'Logan',power: 'Regeneracion');
  
  print(wolfverine);
  print(wolfverine.name);
  print(wolfverine.power);
}

class Hero{
  String name;  
  String power;
  
  
//   two ways to do
 
  //1
    
  //   Hero(this.name,this.power){}
  
  //2
  
  
//   Hero(String pName,String pPower)
//     :name = pName,
//      power = pPower;
  
  
  //3 pasarlas como argumentos
  
  Hero({
    required this.name,
    this.power =  'Sin poder'
    });
  
  
  @override
  String toString() {
    return '$name - $power';
  }
  
  
  
}