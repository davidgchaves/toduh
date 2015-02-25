require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create! title: "Relearn BDD/TDD for the xxx time!", email: "moe@example.com"

    sign_in_as "larry@example.com"

    expect(page).not_to have_css ".todos li", text: "Relearn BDD/TDD for the xxx time!"
  end
end
