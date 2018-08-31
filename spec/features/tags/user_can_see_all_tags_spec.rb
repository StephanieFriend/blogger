require 'rails_helper'

describe 'user visits tags index' do
  it "shows all tags" do
    tag_1 = Tag.create(name: "science")
    tag_2 = Tag.create(name: "fiction")

    visit tags_path

    expect(page).to have_content(tag_1.name)
    expect(page).to have_content(tag_2.name)
  end


end
