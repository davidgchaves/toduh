module TodosHelper
  def render_completion_button(todo)
    if todo.completed?
      button_to "Mark incomplete", todo_completion_path(todo), method: :delete
    else
      button_to "Mark complete", todo_completion_path(todo)
    end
  end

  def completed_class_for(todo)
    "completed" if todo.completed?
  end
end
