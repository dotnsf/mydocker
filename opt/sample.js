var fs = require( 'fs' );

fs.readFile( '/etc/hostname', 'utf-8', function( err, text ){
  if( err ){
    console.log( JSON.stringify( err, null, 2 ) );
  }else{
    console.log( text );
  }
});
