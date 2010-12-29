class Event < ActiveRecord::Base
  has_event_calendar
  
  belongs_to :list
  
  def color 
    self.list.color.hex 
  end
end
