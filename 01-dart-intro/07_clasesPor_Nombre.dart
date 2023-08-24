void main(){
   
  final Map<String,dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive':true
  };
  
  final Hero ironMan = Hero(
  name: 'Tony Stark',
  isAlive: false,
  power: 'Tecnology'
  );
  
  print(ironMan);
}
class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  
  @override
  String toString(){
    return '$name - $power - is Alive? ${isAlive ? 'YES' : 'Nope'}';
  }
    
  
}