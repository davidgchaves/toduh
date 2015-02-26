require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    click_on "Add a new todo"
    fill_in "Title", with: "Relearn BDD/TDD for the xxxth time!"
    click_on "Create todo"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "Relearn BDD/TDD for the xxxth time!"
  end
end
