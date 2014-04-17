get '/' do
  erb :index
end

post '/' do

  if params[:language] == "english"
    @word = EnglishWord.find_by_word(params[:word])

  else

  end


end
