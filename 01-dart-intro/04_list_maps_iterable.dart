void main (){
  final number = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  print("List original: $number");
  print("Length: ${number.length}");
  print('Index 0: ${number[0]}');
  print('First: ${number.first}');
  print('Last: ${number.last}');
    
  //Reversed
  print('reversed: ${number.reversed}');
  

  final  reversedNumber = number.reversed;
  print('Iterable: $reversedNumber');
  print('list: ${reversedNumber.toList()}');
  print('String: ${reversedNumber.toString()}');
  
  //es para devolver una lista, solamente que sus
  //van a ser unicos
  print('Set: ${reversedNumber.toSet()}');
  
  
  
  final greaterThan5 = number.where((int num){
    return num>5;
  });
  
  print('>5: ${greaterThan5.toSet()}');
  
//   Iterable<String> fruits = ['apple','pear','banana','strawberry'];
  
//   for(var fruit in fruits){
//     print(fruit);
//   }
  
  var numberic=[1,2,3,4,5,5].toString();
  
  print(numberic);
  
  
}
