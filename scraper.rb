# Require library
require "capybara/poltergeist"

# Open a Capybara session with the PhantomJS driver
capybara = Capybara::Session.new(:poltergeist)

capybara.visit("https://morph.io/")

# Open the hamburger menu
capybara.click_button "Toggle navigation"

# Search for "planningalerts"
capybara.fill_in :q, with: "planningalerts"
capybara.click_button "Submit"

# GOTCHA! You can't just search for all elements on a page. Capybara doesn't
# wait for the page to load (because what does that mean for a JS application?)
# but it's built in matchers do wait to see if the element appears. This means
# if you want to do something like `#all` you need to scope it first.
capybara.within(".search-results") do
  # Output the text of the full_name elements on the search results page
  capybara.all(".full_name").each { |e| puts e.text }
end
