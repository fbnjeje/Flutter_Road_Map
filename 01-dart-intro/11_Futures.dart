void main(){
  print('Inicio del main');

  httpGet('www.youtube.com').then( (value){
    print( value ); 
  }).catchError( (err){
    print( 'Error $err');
  } );
  
  
  print('Fin del main');
  
  
}


Future<String> httpGet( String url){
  return Future.delayed(Duration(seconds: 1), () {
    
    
//     return "respuesta de mi peticion HTTP";
    
    
    
    throw 'en la peticion Http';
  });
}