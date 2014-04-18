post '/words/new' do
  puts "==========================="
  puts params
  puts "==========================="

  # if params[:create] == "create-english"
  #   @english_word = EnglishWord.new(
  #     word: params[:english_word],
  #     creator: current_user
  #     )
  #   @german_translation = GermanWord.where(word: params[:german_translation])[0]
  #   if @german_translation
  #     @translation = Translation.create(
  #       english_word: @english_word,
  #       german_word: @german_translation
  #       )
  #   else
  #     @german_translation = GermanWord.create(
  #       word: params[:german_translation],
  #       creator: current_user
  #       )
  #   end

  # else
  #   @german_word = GermanWord.new(
  #     word: params[:german_word],
  #     creator: current_user
  #     )
  #   @english_translation = EnglishWord.where(word: params[:english_translation])[0]
  #   if @english_translation
  #     @translation = Translation.create(
  #       german_word: @german_word,
  #       english_word: @english_translation
  #       )
  #   else
  #     @english_translation = EnglishWord.create(
  #       word: params[:english_translation],
  #       creator: current_user
  #       )
  #   end

  # end

  "Your word was created!"

end
