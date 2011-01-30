module EventsHelper
  
  def calendar_month(event)
    content_tag :p, :class => "small_month_name" do
      month(event.start_at)
    end
  end
  
  def calendar_day(event)
    content_tag :p, :class => "small_month_dates" do
      day(event.start_at) + qualifies_for_later(event)
    end
  end
  
  def qualifies_for_later(event)
    event.end_at && event.end_at > event.start_at ? "- #{day(event.end_at)}" : ""
  end
  
end
