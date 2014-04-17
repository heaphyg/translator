get '/' do
  erb :index
end

post '/' do
  if params[:language] == "english"
    @english_word = EnglishWord.find_by_word(params[:word])
    @german_words = @english_word.german_words
  else
    @german_word = GermanWord.find_by_word(params[:word])
    @english_words = @german_word.english_words
  end
end


