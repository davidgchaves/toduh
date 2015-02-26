require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo "Relearn BDD/TDD for the xxxth time!"

    expect(page).to have_css ".todos li", text: "Relearn BDD/TDD for the xxxth time!"
  end
end
