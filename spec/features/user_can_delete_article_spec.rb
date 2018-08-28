require "rails_helper"

describe "user deletes an article" do
  describe "user goes to show page to delete" do
    it "deletes article" do
      article_1 = Article.create(title: "Some Article", body: "Lots of Rambling")
      article_2 = Article.create(title: "Another Article", body: "Lots of Words")

      visit article_path(article_1)

      click_on "Delete"

      expect(current_path).to eq(articles_path)
      expect(page).to have_content(article_2.title)
      expect(page).to have_content("Article '#{article_1.title}' deleted!")
    end
  end
end
