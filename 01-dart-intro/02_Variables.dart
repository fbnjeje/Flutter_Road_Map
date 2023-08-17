void main(){
  final String pokemon = 'Ditto';
  
  final int hp = 100;
  
  final bool isAlive = true;
  
//   final abilities = <String>['impostor'];
  final List<String> abilities= ['impostor'];
  final sprites = <String>['Ditto./back.png','Ditto./front.png'];
  
  
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);
}