require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  describe 'without a plus one' do
    subject do
      described_class.new full_name: "Bob Loblaw",
                          is_coming: true
    end

    it 'saves successfully when valid' do
      subject.save!
      expect(subject.id > 0).to be true
    end

    it 'is not valid without a full name' do
      subject.full_name = nil
      is_expected.not_to be_valid
    end

    it 'is valid without a plus one' do
      is_expected.to be_valid
    end

    it 'has defaults for plus one' do
      expect(subject.has_plus_one).to be nil
      expect(subject.plus_one_full_name).to be nil
    end
  end

  describe 'with a plus one' do
    subject do
      described_class.new full_name: 'Bob Loblaw',
                          is_coming: true,
                          has_plus_one: true,
                          plus_one_full_name: "Hope Loblaw"
    end

    it 'is valid with a plus one' do
      is_expected.to be_valid
    end
  end
end
