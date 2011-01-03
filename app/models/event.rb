class Event < ActiveRecord::Base
  has_event_calendar
  
  belongs_to :list
  belongs_to :user
  
  def color 
    self.list.color.hex 
  end
end
