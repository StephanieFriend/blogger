require 'rails_helper'

describe 'user visits tag show page' do
  it "can delete a tag" do
    article = Article.create!(title: "New Title", body: "New Body")
      tag_1 = article.tags.create!(name: "Name")
      tag_2 = article.tags.create!(name: "Subaru")

    visit tag_path(tag_1)

    click_on "Delete"
    
    expect(current_path).to eq(tags_path)
    expect(page).to have_content(tag_2.name)
  end
end
