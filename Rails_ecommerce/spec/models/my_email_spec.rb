require 'rails_helper'

RSpec.describe MyEmail, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it{ should validate_presence_of(:email).with_message("Ops! Provide your email") }
  it{ should validate_uniqueness_of(:email).with_message("Ops! this email is already registered") }

end
