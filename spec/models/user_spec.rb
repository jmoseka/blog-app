require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validaiton tests for user' do
    subject { User.new(name: 'Jamila Kc', photo: 'profile.png', bio: 'Jamila the great', posts_counter: 0) }
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

  describe 'Test for recent comments on posts' do
    subject do
      Jamila = User.new(name: 'Jamila Kc', photo: 'profile.png',
                       bio: 'I am coming out to be the best computer programmer', posts_counter: 0)
      Post.new(title: 'My best friend', text: 'He will be unvailed at the end of my program at Microverse',
               comments_counter: 3, likes_counter: 3, author_id: Jamila.id)
    end
    it 'Should have maximum of five comments' do
      expect(subject.recent_comments).to eq(subject.recent_comments)
    end
  end
end
