require 'rails_helper'

describe 'user sees all articles' do
  describe 'they visit /articles' do
    it 'displays all articles' do
      article_1 = Article.create!(title: 'Best Title', body: 'Uninteresting Article')
      article_2 = Article.create!(title: 'Boring Title', body: 'No one will know how awesome this article is')
      visit '/articles'

      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_2.title)
    end
  end
end
