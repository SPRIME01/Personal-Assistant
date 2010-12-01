require 'spec_helper'

describe User do
  
  describe User do
		it { should have_many(:tasks) }
		it { should have_many(:lists) }
		it { should have_many(:groups) }
		it { should have_many(:categories) }
		it { should have_many(:tags) }

		it { should validate_presence_of(:email) }
		it { should validate_presence_of(:password) }
		it { should validate_presence_of(:password_confirmation) }
	end
  
  pending "add some examples to (or delete) #{__FILE__}"
  
end
