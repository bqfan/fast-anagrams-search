class AnagramsController < ApplicationController

  def index

  end

  def create
    if params[:word] == ""
      flash[:error] = "Empty input! Please enter a word to search for anagrams"
      redirect_to anagrams_path
    elsif Dictionary.empty?
      flash[:error] = "No dictionary! Please upload a dictionary first"
      redirect_to anagrams_path
    else
      word = params[:word].downcase
      word_key = word.chars.sort.join

      anagrams = Dictionary.find_anagrams(word_key)

      anagrams = ["No anagrams found for " + word] if anagrams==[]

      temp = { :words => anagrams }

      session[:anagrams] ||= []
      session[:anagrams] << temp

      redirect_to anagrams_path
    end
  end

  def destroy
    session[:anagrams] = nil
    flash[:success] = "Anagrams deleted"
    redirect_to anagrams_path
  end
end

