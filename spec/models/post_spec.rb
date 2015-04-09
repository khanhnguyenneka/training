require 'rails_helper'

describe Post do
  describe 'Association' do
    it { is_expected.to belong_to :category }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :state }
    it { is_expected.to validate_presence_of :category_id }
    it { is_expected.to enumerize(:state).in(:publish, :unpublish, :trash) }
  end
end