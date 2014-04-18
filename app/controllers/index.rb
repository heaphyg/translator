get '/' do
  erb :index
end

post '/' do
  # if params[:language] == "english"
  #   @english_word = EnglishWord.find_by_word(params[:word])
  #   if @english_word.nil?
  #   	@error = {invalid: "#{params[:word]} is not in the database"}
  #   else
  #     @german_words = @english_word.german_words
  #   end
  # else
  #   @german_word = GermanWord.find_by_word(params[:word])
  #   puts @german_word
  #   if @german_word.nil?
  #     @error = {invalid: "#{params[:word]} is not in the database"}
  #   else
  #     @english_words = @german_word.english_words
  #   end
  # end
  # erb :index

  #### AJAX version of above
    # raise params.inspect
    puts "================="
    puts params[:language]
    puts "================="

   if params[:language] == 'english'
   	 @english_word = EnglishWord.find_by_word(params[:word])
   	 @german_words = @english_word.german_words
   	 {words: @german_words}.to_json
   elsif params[:language] == 'german'
   	 @german_word = GermanWord.find_by_word(params[:word])
   	 @english_words = @german_word.english_words
   	 {words: @english_words}.to_json
   end


  # {language: params[:language], word: params[:word]}.to_json
end


