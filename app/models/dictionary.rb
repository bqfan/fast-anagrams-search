class Dictionary < ActiveRecord::Base
  attr_accessible :word, :key

  def self.empty?
  	true if self.count(:word) == 0
  end

  def self.find_anagrams(word_key)
    self.where(:key => word_key)
  end
end
