module CalendarHelper
  def month_link(month_date)
    link_to(I18n.localize(month_date, :format => "%B"), {:month => month_date.month, :year => month_date.year})
  end
  
  # custom options for this calendar
  def event_calendar_opts
    { 
      :year => @year,
      :month => @month,
      :event_strips => @event_strips,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => "<< " + month_link(@shown_month.prev_month),
      :next_month_text => month_link(@shown_month.next_month) + " >>",
      :use_all_day => true,
      :link_to_day_action => "day",
      :use_javascript => false,
      :no_event_bg => false
    }
  end

  def event_calendar
    # args is an argument hash containing :event, :day, and :options
    calendar event_calendar_opts do |args|
      event, day = args[:event], args[:day]
      html = %(<a href="/events/#{event.id}" title="#{h(event.name)}">)
      html << display_event_time(event, day)
      html << %(#{h(event.name)}</a>)
      html
    end
  end
  
  def day_link(text, date, day_action)
    link_to(text, new_event_path({:year => date.year, :month => date.month, :day => date.day}), :class => 'event_dialog', :year => date.year, :day => date.day, :month => date.month)
  end
  
  def no_event_bg?(event, options)
    return false
  end
  
  def display_event_time(event, day)
    time = event.start_at
    if time.to_date == day
      # try to make it display as short as possible
      fmt = (time.min == 0) ? "%l" : "%l:%M"
      t = time.strftime(fmt)
      am_pm = time.strftime("%p") == "PM" ? "pm" : "am"
      t += am_pm
      %(<span class="ec-event-time">#{t}</span>)
    else
      ""
    end
  end
  
end
