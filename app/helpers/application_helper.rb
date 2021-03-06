module ApplicationHelper
  
  def page_title
    "Personal Assistant " + controller.action_name + ": " + controller.controller_name
  end
  
  def main_nav
    links = []
    links << link_to("Home", root_path, :title => "Home")
    links << link_to("Lists", lists_path, :title => "View My Lists")
    links << link_to("Tasks", tasks_path, :title => "View My Tasks")
    links << link_to("Groups", groups_path, :title => "View My Groups")
    
    #temp links
    links << link_to("Categories", categories_path, :title => "View My Categories")
    links << link_to("Calendar", calendar_path, :title => "View My Events on a Calendar")
    links << link_to("Events", events_path, :title => "View My Events")
    links << link_to("Color", colors_path, :title => "Manage My Colors")
    
    #future help page
    links << link_to("Help Page / Explanations", getting_started_path, :title => "Getting Started & Helpful Tips")
    
    menu(links)
  end
  
  def user_nav
    links = []
    links << link_to("Signed in as " + current_user.email, '/') if current_user
    links << link_to("Not you? Sign out", destroy_user_session_path) if current_user
    links << link_to("Sign up ", new_user_registration_path) unless current_user
    links << link_to("Sign in ", new_user_session_path) unless current_user
    
    menu(links)
  end
  
  def menu(links)
    content_tag :ul do
      convert_to_list(links).html_safe
    end
  end
  
  def convert_to_list(links)
    a = []
    links.each do |link|
      a << content_tag(:li, link, :class => classy(link, links) )
    end
    a.join('')
  end
  
  def classy(link, links)
    if link == links.first
      return "first"
    elsif link == links.last
      return "last"
    end
  end
  
  def color_dropdown(f)
    @colors = Color.all
	  color_options = @colors.collect{ |color| [color.name, color.id] }
	  
    return f.select :color_id, options_for_select(color_options, :selected => f.object.color_id), :include_blank => true
	end

  def color_box(hex)
    "<p class='color_box' style='background-color:#{hex}'></p>".html_safe
  end
  
  def day(date)
    date.strftime("%d")
  end
  
  def month(date)
    date.strftime("%b")
  end

end
