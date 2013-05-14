require 'spec_helper'
require 'wiki_import'

describe 'The Article parser' do
    
    before do
        @article = Article.make!

        dummy_text = "<page><title>#{(@article.title)}</title><text>#{(@article.body)}</text>}"

        @document = WikiImport.new(logger)
        @document = double("WikiImport")
        

    end

    it "creates an Article in the database" do
        Article.count.should eq(1)
    end
end