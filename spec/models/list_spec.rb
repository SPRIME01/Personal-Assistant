require 'spec_helper'

describe List do
  
  describe List do
		it { should have_many(:tasks) }
		it { should have_many(:groups) }
		it { should have_many(:categories) }

		it { should validate_presence_of(:name) }
	end
	
  pending "add some examples to (or delete) #{__FILE__}"
  
end
