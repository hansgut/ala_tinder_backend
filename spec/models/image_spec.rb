require 'rails_helper'

RSpec.describe Image, type: :model do
  subject { FactoryBot.create(:user).gallery.images.build(position: 1) }

  it 'is not valid without a file' do
    subject.file = nil
    expect(subject).not_to be_valid
  end
end
