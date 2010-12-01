require 'spec_helper'

describe Tag do
  
  describe Tag do
		it { should belong_to(:task) }
		it { should belong_to(:user) }

		it { should validate_presence_of(:name) }
	end
  
  pending "add some examples to (or delete) #{__FILE__}"
  
end
