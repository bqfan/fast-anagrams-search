module ApplicationHelper
  def anagrams
      @anagrams ||= session[:anagrams]
  end
end
