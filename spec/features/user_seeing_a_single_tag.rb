require 'rails_helper'

describe 'tag show page' do
  it "show info on single tag" do
    article = Article.create!(title: "New Title", body: "New Body")
      tag = article.tags.create!(name: "Name")

      visit article_path(article)

      click_on "Name"

      expect(page).to have_content(tag.name)
  end
end
