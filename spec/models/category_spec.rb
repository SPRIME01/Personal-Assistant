require 'spec_helper'

describe Category do
  
  describe Category do
		it { should belong_to(:list) }

		it { should validate_presence_of(:name) }
		it { should validate_presence_of(:list_id) }
		it { should validate_presence_of(:user_id) }
	end
  
  pending "add some examples to (or delete) #{__FILE__}"
  
end
