void main(){
  final String pokemon = 'Ditto';
  
  final int hp = 100;
  
  final bool isAlive = true;
  
//   final abilities = <String>['impostor'];
  final List<String> abilities= ['impostor'];
  final sprites = <String>['Ditto./back.png','Ditto./front.png'];
  
 //dynamic == null
  
  dynamic errorMessage = 'Hola';
  errorMessage = 123;
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}