require 'rails_helper'

RSpec.describe Category, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  # Association test
  it { should have_many(:products).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:name) }
end
