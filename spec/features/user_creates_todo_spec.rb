require "rails_helper"
require "support/features/sign_in"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Relearn BDD/TDD for the xxx time!"
    click_on "Create todo"

    expect(page).to have_css ".todos li", text: "Relearn BDD/TDD for the xxx time!"
  end
end
