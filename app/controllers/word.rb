post '/words/new' do
  puts "==========================="
  puts params
  puts "params[:english_word]"
  puts params[:english_word]
  puts "params[:german_translation]"
  puts params[:german_translation]
  puts "==========================="

  if params[:create] == "create-english"
    @english_word = EnglishWord.create(
      word: params[:english_word],
      creator: current_user
      )
    @german_translation = GermanWord.where(word: params[:german_translation])[0]
    unless @german_translation
      @german_translation = GermanWord.create(
        word: params[:german_translation],
        creator: current_user
        )
    else
    end

    @translation = Translation.create(
      english_word: @english_word,
      german_word: @german_translation
      )

  else
    @german_word = GermanWord.create(
      word: params[:german_word],
      creator: current_user
      )
    @english_translation = EnglishWord.where(word: params[:english_translation])[0]
    unless @english_translation
      @english_translation = EnglishWord.create(
        word: params[:english_translation],
        creator: current_user
        )
    end

    @translation = Translation.create(
      german_word: @german_word,
      english_word: @english_translation
      )

  end

  "Your word was created!"

end
