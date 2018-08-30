require 'rails_helper'

describe Tag, type: :model do
  describe 'relationships' do
    it {should have_many(:taggings)}
    it {should have_many(:articles).through(:taggings)}
  end
  describe 'instance methods' do
    it 'create string from name' do
      tag_1 = Tag.create(name: "science")
      tag_2 = Tag.create(name: "fiction")

      expect(tag_1.to_s).to eq(tag_1.name)
      expect(tag_2.to_s).to eq(tag_2.name)
    end
  end
end
