require 'rails_helper'

RSpec.describe Usuario, type: :model do
  before {@usuario = FactoryGirl.build(:usuario)}

  it {expect(@usuario).respond_to?(:email)}
end
