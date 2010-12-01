module ApplicationHelper
  
  def page_title
    "Personal Assistant " + controller.action_name + ": " + controller.controller_name
  end
  
  def main_nav
    links = []
    links << link_to("Home", root_path, :title => "Home")
    links << link_to("Lists", lists_path, :title => "What is This?")
    links << link_to("Tasks", tasks_path, :title => "Home")
    links << link_to("Groups", groups_path, :title => "Getting Started")
    
    #temp links
    links << link_to("Categories", categories_path, :title => "Events")
    
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
      convert_to_list(links)
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

end
module ApplicationHelper
end
