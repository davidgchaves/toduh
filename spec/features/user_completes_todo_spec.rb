require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo "Relearn BDD/TDD for the xxxth time!"

    click_on "Mark complete"

    expect(page).to display_completed_todo "Relearn BDD/TDD for the xxxth time!"
  end
end
