require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create! title: "Relearn BDD/TDD for the xxxth time!", email: "moe@example.com"

    sign_in_as "larry@example.com"

    expect(page).not_to display_todo "Relearn BDD/TDD for the xxxth time!"
  end
end
