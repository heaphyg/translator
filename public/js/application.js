$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $("input[name='create-english']").on('click', function(event) {
    $('.word-creation-form').append("<div class='english-field'><input type='text' name='english-word' placeholder='Type in English word'><br><input type='text' name='german-translation' placeholder='Type in German translation'><br><input type='submit' value='Create!'></div>")
  });

  $("input[name='create-german']").on('click', function(event) {
    $('.word-creation-form').append("<div class='german-field'><input type='text' name='german-word' placeholder='Type in English word'><br><input type='text' name='german-translation' placeholder='Type in English translation'><br><input type='submit' value='Create!'></div>")
  });

});
