require 'rails_helper'

describe Category do
  describe 'Association' do
    it { is_expected.to have_many :posts }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :state }
    it { is_expected.to enumerize(:state).in(:published, :unpublished) }
  end
end