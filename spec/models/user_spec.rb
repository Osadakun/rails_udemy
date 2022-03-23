# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  birthday        :date
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#age' do
    before do
      allow(Time.zone).to receive(:now).and_return(Time.zone.parse('2018/04/01'))
    end
    context "20年までの生年月日の場合" do
      let(:user) { User.new(birthday: Time.zone.now - 20.years) }

      it '年齢が20歳であること' do
        expect(user.age).to eq 20
      end
    end
  end
end