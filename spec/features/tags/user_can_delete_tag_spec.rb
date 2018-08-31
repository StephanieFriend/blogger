require 'rails_helper'

describe 'user visits tag index page' do
  it "can delete a tag" do
    article = Article.create!(title: "New Title", body: "New Body")
      tag_1 = article.tags.create!(name: "Name")
      tag_ = article.tags.create!(name: "Subaru")

    visit tag_path(tag_1)
    click_on "Delete"
    save_and_open_page

    expect(current_path).to eq(tags_path)
    expect(page).to_not have_contect(tag_1.name)
    expect(page).to have_contect(tag_2.name)
  end
end
