Parse.initialize( "2aJSi18vceM7SemhEZHoTx5tj3nRdp1fmp4jHEqF", "WrWlugb8xEzhHlVGV7j3fhT2hA2HeceZ7C6hD7m4" );

function playTheme() {
    var audio = document.getElementsByTagName( "audio" )[ 0 ];
    audio.play();
}

function storeData() {
    var currentText = document.getElementById( "main_page_text" ).innerHTML;

    var TestObject = Parse.Object.extend( "SavedTexts" );
    var testObject = new TestObject();
    testObject.save( {
        savedText : currentText
    } ).then( function( object ) {
        document.getElementById( "restore_button" ).setAttribute( "data-dbId", object.id );
        alert( "Saved!" );
    } );
}

function restoreData() {
    var SavedTexts = Parse.Object.extend( "SavedTexts" );

    var query = new Parse.Query( SavedTexts );

    query.get( document.getElementById( "restore_button" ).getAttribute( "data-dbId" ), {
        success : function( object ) {
            var retrievedText = object.get( "savedText" );
            document.getElementById( "main_page_text" ).innerHTML = retrievedText + "(restored)";
        },
        error : function( object, error ) {
            alert( "ERROR!" );
        }
    } );
}

function respect() {
    var respect = "Respect my authority!";
    var currentText = document.getElementById( "main_page_text" ).innerHTML;

    if ( currentText === respect ) {
        alert( "I said, respect!!!" );
        document.getElementById( "suck_button" ).style.visibility = 'hidden';
        document.getElementById( "main_page_text" ).innerHTML = "Well respected! :P";
    } else {
        document.getElementById( "main_page_text" ).innerHTML = "Respect my authority!";
    }

}

function getCurrentTime() {
    $.getJSON( '/sptrain/js/time.json', function( data ) {
        document.getElementById( "main_page_text" ).innerHTML = data.datetime;
    } );

    ;
}
