void main (){
  final wolfverine = new Hero('Logan','Regeneration');
  
  print(wolfverine);
  print(wolfverine.name);
  print(wolfverine.power);
}

class Hero{
  String name;  
  String power;
  
  
//   two ways to do
 
  //1
    
  Hero(this.name,this.power){}
  
  //2
  
  
//   Hero(String pName,String pPower)
//     :name = pName,
//      power = pPower;
  
}