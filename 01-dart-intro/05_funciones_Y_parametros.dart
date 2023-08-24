void main (){
  print(greetEveryOne());
  
  print('suma ${addTwoNumbersOptional(5)}');
  
  print(greetPerson(name: 'ferxxxo',message:'Un saludo a'));
}

greetEveryOne() => "Hello every one";

// addTwoNumbers(int a,int b){
//   return a + b;
// }

addTwoNumbers(int a , int b) => a+b;


//two ways to do


// addTwoNumbersOptional(int a ,[int b = 5]) => a+b;


addTwoNumbersOptional(int a ,[int b = 5]) {
  
  return  a+b;
}


String greetPerson({required String name,String message= 'hola,'}){
  return '$message $name';
}