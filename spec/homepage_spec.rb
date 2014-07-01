require 'spec_helper'

feature "Homepage" do
  scenario "Should have a greeting" do
    visit "/"
    expect(page).to have_content("RSVP")
  end
end

feature "RSVP Form" do
  scenario "has form information" do
    visit "/rsvps/new"
    expect(page).to have_content("Name", "Email", "Number of Guests",
                                 "Dinner Choice"
                    )
  end
end

feature "Submit form" do
  scenario "Thanks for submitting" do
    visit "/rsvps/new"

    click_button "RSVP"

    expect(page).to have_content("Thanks for RSVPing!")
  end
end