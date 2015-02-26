require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo "Relearn BDD/TDD for the xxxth time!"
    click_on "Mark complete"

    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Relearn BDD/TDD for the xxxth time!"
    expect(page).to display_todo "Relearn BDD/TDD for the xxxth time!"
  end
end
