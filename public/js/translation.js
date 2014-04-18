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
         translation = JSON.parse(response)
         console.log(translation.alert)
         if (translation.alert === "This word is not in our database.") {
              $('.container > .translation_container').empty()
              $('.container > .translation_container').append("<li>" +translation.alert +"</li>");
         } else {
              $('.container > .translation_container').empty()
              $.each(translation.words, function(index, value){
              $('.container > .translation_container').append("<li>" +value.word +"</li>");
           });
         }
   
       }
    });
  });


});



// "<form method='get' action='/words/new'><input type='submit' value='add new word'></form>"