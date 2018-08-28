require 'rails_helper'


describe "user edits an article" do
  describe "user start from article show page" do
    it "edits and article" do
      new_title = "New Title!"
      new_body = "New BOdy!"
      article_1 = Article.create(title: "This is an Article", body: "Lot of words.....")

      visit article_path(article_1)
      click_on "Edit"

      fill_in "article[title]", with: new_title
      fill_in "article[body]",  with: new_body
      click_on "Update Article"


      expect(current_path).to eq(article_path(article_1))
      expect(page).to have_content(new_title)
      expect(page).to have_content(new_body)
    end
  end
end
