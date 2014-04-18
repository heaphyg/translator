$(document).ready(function() {

  // var translationFormData = $('.translation_form').serialize()

  $('.translation_form').submit(function(event){
  	event.preventDefault()
  	var translationFormData = $('.translation_form').serialize()
  	console.log(translationFormData)
    $.ajax({
       type: 'POST',
       url: '/',
       data: translationFormData,
       success: function(response){
         tranlation = JSON.parse(response)
         console.log(tranlation)
         // $('.container').append(tranlation.words[0].word);
         $('.container > .translation_container')
         $.each(tranlation.words, function(index, value){
           $('.container > .translation_container').append("<li>" +value.word +"</li>");

         });
   
       }
    });
  });


});



// $.each([ 52, 97 ], function( index, value ) {
//   alert( index + ": " + value );
// });

// $.each(tranlation.words, function(index, value){
//     $('.container').append(value);
// });
