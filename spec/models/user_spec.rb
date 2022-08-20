require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validaiton tests for user' do
    subject { User.new(name: 'Henry Kc', photo: 'profile.png', bio: 'Henry the great', posts_counter: 0) }
    before { subject.save }

    it 'Should have name present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'Should have post counter as an integer' do
      subject.posts_counter = 3
      expect(subject).to be_valid
    end

    it 'Should have post counter not as float' do
      subject.posts_counter = 3.5
      expect(subject).to_not be_valid
    end

    it 'Should have post counter not be less than zero' do
      subject.posts_counter = -1
      expect(subject).to_not be_valid
    end

    it 'Should have the subject as valid' do
      expect(subject).to be_valid
    end
  end
end
