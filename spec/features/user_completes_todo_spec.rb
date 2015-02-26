require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo "Relearn BDD/TDD for the xxxth time!"

    click_on "Mark complete"

    expect(page).to have_css ".todos li.completed", text: "Relearn BDD/TDD for the xxxth time!"
  end
end
