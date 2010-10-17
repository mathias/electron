require "stories_helper"

class SiteTest < Test::Unit::TestCase
  story "As a user I want to see the homepage" do
    scenario "A visitor goes to the homepage" do
      visit "/"

      assert_contain "Hello, world!"
    end

    scenario "A visitor goes to the projects list" do
      visit "/projects"
      
      assert_contain "Projects"
    end
  end
end
