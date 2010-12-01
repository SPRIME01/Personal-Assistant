require 'spec_helper'

describe Task do
  
  describe Task do
		it { should belong_to(:list) }
		it { should belong_to(:group) }
		it { should belong_to(:category) }
		it { should belong_to(:user) }
		it { should have_many(:tags) }

		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:description) }
	end
	
  pending "add some examples to (or delete) #{__FILE__}"
  
end
