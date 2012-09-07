class DictionariesController < ApplicationController

  def create
    if params[:dictionary].nil? || params[:dictionary].content_type != "text/plain"
      flash[:error] = "Invalid file! Please enter a .txt file"
      redirect_to anagrams_path
    else
      words = params[:dictionary].read.downcase.split(' ')

      words_by_anagram = words.uniq.inject(Hash.new []) do |anagrams, word|
        key = word.chars.sort.join

        anagrams[key] += [word]
        anagrams
      end

      Dictionary.transaction do
        words_by_anagram.each do |a|
          dic = Dictionary.create(:key => "#{a[0]}", :word => "#{a[1].join(', ')}")
          dic.save
        end
      end

      flash[:success] = "Dictionary uploaded!"
      redirect_to anagrams_path
    end
  end

  def destroy
    Dictionary.destroy_all
    session[:anagrams] = nil
    flash[:success] = "Dictionary deleted!"
    redirect_to anagrams_path
  end

end
