require "test_helper"

feature "Search" do
  scenario "user enters something" do
    visit root_path

    within "form" do
      fill_in "search", with: "hogehoge"
      click_button "search"
    end

    #page.must_have_content "Not found"
  end
end
