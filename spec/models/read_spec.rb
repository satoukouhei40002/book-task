require 'rails_helper'

RSpec.describe Read, type: :model do
  describe '読書内容投稿' do
    context '投稿できる場合' do
      it '全て存在すれば登録できる' do
        read = FactoryBot.build(:read)
        expect(read).to be_valid
      end
    end

    context '投稿できない場合' do
      it 'titleが空では投稿できない' do
        read = FactoryBot.build(:read, title: nil)
        read.valid?
        expect(read.errors[:title]).to include("can't be blank")
      end

      it 'contentがからでは投稿できない' do
        read = FactoryBot.build(:read, content: nil)
        read.valid?
        expect(read.errors[:content]).to include("can't be blank")
      end

      it 'userが紐付いてないと登録できない' do
        read = FactoryBot.build(:read, user: nil)
        read.valid?
        expect(read.errors[:user]).to include("must exist")
      end
    end
  end
end