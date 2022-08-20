require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Validation tests for Comments' do
    subject { Comment.new(text: 'Comments creation', author_id: 2, post_id: 2) }

    before { subject.save }

    it 'Find author_id to be an integer' do
      subject.author_id = 'henry'
      expect(subject).to_not be_valid
    end

    it 'Find author_id to be an integer greater or equal to zero' do
      subject.author_id = -2
      expect(subject).to_not be_valid
    end

    it 'Find post_id to be an integer' do
      subject.post_id = 'henry'
      expect(subject).to_not be_valid
    end

    it 'Find post_id to be an integer greater or equal to zero' do
      subject.post_id = -2
      expect(subject).to_not be_valid
    end
  end
end