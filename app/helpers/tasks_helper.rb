module TasksHelper
  
  def is_repeatable(task)
    task.repeatable ? 'Yes' : 'No'
  end
end
