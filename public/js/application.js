$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $("input[value='create-english']").on('click', function(event) {
    $('.german-field').remove();
    $('.word-creation-form').append("<div class='english-field'><input type='text' name='english_word' placeholder='Type in English word'><br><input type='text' name='german_translation' placeholder='Type in German translation'><br><input class='create-button' type='submit' value='Create!'></div>")
  });

  $("input[value='create-german']").on('click', function(event) {
    $('.english-field').remove();
    $('.word-creation-form').append("<div class='german-field'><input type='text' name='german_word' placeholder='Type in German word'><br><input type='text' name='english_translation' placeholder='Type in English translation'><br><input class='create-button' type='submit' value='Create!'></div>")
  });

  $('.word-creation-form').on('click', '.create-button', function(e) {
    e.preventDefault();
    $.ajax({
      type: "POST",
      url: "/words/new",
      data: $('.word-creation-form').serialize(),
      success: function(resp) {
        alert(resp);
      }

    });
  });

});
