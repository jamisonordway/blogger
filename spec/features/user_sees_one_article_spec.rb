require 'rails_helper'

describe 'user sees one article' do
  describe 'they link from the articles index' do
    it 'displays information for one article'
    article_1 = Article.create(title: 'Best Title', body: 'Uninteresting Article')
    visit articles_path
    click_link article_1.title

    expect(page).to have_content article_1.title
    expect(page).to have_content article_1.body
  end
end
