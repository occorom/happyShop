require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  # Association test
  it { should belong_to(:category) }
  # Validation test
  it { should validate_presence_of(:name) }
end
