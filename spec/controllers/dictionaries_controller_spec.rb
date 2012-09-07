require 'spec_helper'

describe DictionariesController do

  describe 'create' do

    it "should return error when no file is selected to upload" do
      get 'create', {dictionary: nil}
      flash[:error].should == 'Invalid file! Please enter a .txt file'
      response.should redirect_to(anagrams_path)
    end

  end

  describe 'destroy' do

    it "should delete dictionary" do
      pending "add some examples to (or delete) #{__FILE__}"
    end

 end
 
end
